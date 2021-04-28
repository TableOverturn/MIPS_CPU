.text
# Syscall
# 0x32 -> pause
# 0x31 -> get current clock cycles
# 0x24 -> frame flush
# 0x23 -> copy to RAM
# 0x22 -> display
# 0x21 -> get bitmap
# 0x20 -> screen output
# 0x10 -> get keyboard input
# Global Rigisters: 
#       s0 save the block number T
#       s1 save the current X
#       s2 save the current Y    
#       s3 save the H
#       s4 save the W
#       s5 save the begin address of X offsets
#       s6 save the begin address of Y offsets
#       s7 save the score

addi    $sp, $zero, 0x400
addi    $s1, $0, 0x7
addi    $s3, $0, 0x1F
addi    $s4, $0, 0xF
addi    $s5, $0, 0x80
addi    $s6, $0, 0x90
jal     LOAD_DATA

jal     DECODE
addi    $a1, $0, 0x400
jal     FLUSH_BLOCKS

MAIN_LOOP:
# auto move down
# clear the remaining blocks
add     $a1, $0, $0
jal     FLUSH_BLOCKS
# try to move down
addi    $s2, $s2, 0x1
jal     CHECK_VALID
beq     $a0, $0, NORMAL
# fail
add    $s2, $s2, -1
addi    $a1, $0, 0x400
jal     FLUSH_BLOCKS
j       NEW_BLOCK

NORMAL:
addi    $a1, $0, 0x400
jal     FLUSH_BLOCKS

# get keyboard input
add     $a0, $0, $0
addi    $v0, $0, 0x10
syscall

beq     $a0, $0, NEW_LOOP
add     $a2, $0, $a0
add     $a1, $0, $0
jal     FLUSH_BLOCKS
add     $a0, $0, $a2

W:
bne     $a0, 0x57, A    # 'W' = 0x57
add     $a2, $s0, $0
addi    $t0, $0, 0x8
slt     $t1, $s0, $t0
beq     $t1, 0x1, LSB
andi    $t1, $s0, 0x3
bne     $t1, 0x3, BESIDE
subi    $s0, $s0, 0x3 
j		CHECK
LSB:
andi    $t1, $s0, 0x1
bne     $t1, 0x1, BESIDE
subi    $s0, $s0, 0x1
j		CHECK	    
BESIDE:
addi    $s0, $s0, 0x1
j	    CHECK
CHECK:
jal     DECODE
jal     CHECK_VALID
beq     $a0, $0, NEW_LOOP
add     $s0, $a2, $0
jal     DECODE
j       NEW_LOOP

A:
bne     $a0, 0x41, S    # 'A' = 0x41
addi    $s1, $s1, -1
jal     CHECK_VALID
beq     $a0, $0, NEW_LOOP
addi    $s1, $s1, 0x1
j       NEW_LOOP

S:
bne     $a0, 0x53, D            # 'S' = 0x53
addi    $s2, $s2, 0x1
jal     CHECK_VALID
beq     $a0, $0, NEW_LOOP
addi    $s2, $s2, -1
j       NEW_BLOCK

D:
bne     $a0, 0x44, NEW_LOOP           # 'D' = 0x44
addi    $s1, $s1, 0x1
jal     CHECK_VALID
beq     $a0, $0, NEW_LOOP
addi    $s1, $s1, -1
j       NEW_LOOP

NEW_LOOP:
addi    $a1, $0, 0x400
jal     FLUSH_BLOCKS
j       MAIN_LOOP

NEW_BLOCK:

addi    $a1, $0, 0x400
jal     FLUSH_BLOCKS

addi    $v0, $0, 0x31
syscall
add     $s0, $0, $a0

jal     DECODE

add     $s2, $0, $0
addi    $s1, $0, 0x7
jal     CHECK_ELIMINATION
# jal     CHECK_FAILURE

# show score
add     $a0, $s7, $0
addi    $v0, $0, 0x22
syscall

addi    $a1, $0, 0x400
jal     FLUSH_BLOCKS
j       MAIN_LOOP

# check each line for elimination
# in use:
#   a0, v0 -> syscall
#   t0 -> line select
#   t1 -> 0xFFFF
CHECK_ELIMINATION:
addi    $a1, $0, 0x400
addi    $a2, $0, 0x800
addi    $t0, $0, 0x1F
ori     $t1, $0, 0xFFFF
EACH_LINE:
addi    $v0, $0, 0x21
sll     $a0, $t0, 0x5
or      $a0, $a0, $a1
syscall
bne     $a0, $t1, UNFULLFILLED
addi    $v0, $0, 0x20
sll     $a0, $t0, 0x5
or      $a0, $a0, $a2
syscall # ELIMINATE
addi    $s7, $s7, 0x1
j       EACH_LINE
UNFULLFILLED:
beq     $a0, $0, CHECK_ELIMINATION_RETURN
addi    $t0, $t0, -1
bne     $t0, -1, EACH_LINE
CHECK_ELIMINATION_RETURN:
jr      $ra

# check the validity of move
# in use:
#   a0 v0 -> syscall
#   t0 -> X
#   t1 -> Y
#   t2 -> Y MAX
#   t3 -> check
#   t4 -> X MAX

CHECK_VALID:
addi    $v0, $0, 0x21
addi    $t2, $0, 0x1F
addi    $t4, $0, 0xF

add     $a0, $0, $0
lw      $t0, ($s5)
lw      $t1, ($s6)
add     $t0, $t0, $s1
add     $t1, $t1, $s2
or      $t3, $t0, $t4
bne     $t3, $t4, INVALID
or      $t3, $t1, $t2
bne     $t3, $t2, INVALID
sll     $t1, $t1, 0x5
or      $a0, $a0, $t0
or      $a0, $a0, $t1
syscall
bne     $a0, $0, INVALID

add     $a0, $0, $0
lw      $t0, 0x4($s5)
lw      $t1, 0x4($s6)
add     $t0, $t0, $s1
add     $t1, $t1, $s2

or      $t3, $t0, $t4
bne     $t3, $t4, INVALID
or      $t3, $t1, $t2
bne     $t3, $t2, INVALID

sll     $t1, $t1, 0x5
or      $a0, $a0, $t0
or      $a0, $a0, $t1
syscall
bne     $a0, $0, INVALID

add     $a0, $0, $0
lw      $t0, 0x8($s5)
lw      $t1, 0x8($s6)
add     $t0, $t0, $s1
add     $t1, $t1, $s2

or      $t3, $t0, $t4
bne     $t3, $t4, INVALID
or      $t3, $t1, $t2
bne     $t3, $t2, INVALID

sll     $t1, $t1, 0x5
or      $a0, $a0, $t0
or      $a0, $a0, $t1
syscall
bne     $a0, $0, INVALID

add     $a0, $0, $0
lw      $t0, 0xC($s5)
lw      $t1, 0xC($s6)
add     $t0, $t0, $s1
add     $t1, $t1, $s2

or      $t3, $t0, $t4
bne     $t3, $t4, INVALID
or      $t3, $t1, $t2
bne     $t3, $t2, INVALID

sll     $t1, $t1, 0x5
or      $a0, $a0, $t0
or      $a0, $a0, $t1
syscall
bne     $a0, $0, INVALID

jr		$ra					

INVALID:
addi    $a0, $0, 0x1
jr      $ra

# flush the blocks
# input: 
#   a1 -> control bits
# in use:
#   a0 v0 -> syscall
#   t0 -> X
#   t1 -> Y
FLUSH_BLOCKS:
addi    $v0, $0, 0x20

add     $a0, $a1, $0
lw      $t0, ($s5)
lw      $t1, ($s6)
add     $t0, $t0, $s1
add     $t1, $t1, $s2
sll     $t1, $t1, 0x5
or      $a0, $a0, $t0
or      $a0, $a0, $t1
syscall

add     $a0, $a1, $0
lw      $t0, 0x4($s5)
lw      $t1, 0x4($s6)
add     $t0, $t0, $s1
add     $t1, $t1, $s2
sll     $t1, $t1, 0x5
or      $a0, $a0, $t0
or      $a0, $a0, $t1
syscall

add     $a0, $a1, $0
lw      $t0, 0x8($s5)
lw      $t1, 0x8($s6)
add     $t0, $t0, $s1
add     $t1, $t1, $s2
sll     $t1, $t1, 0x5
or      $a0, $a0, $t0
or      $a0, $a0, $t1
syscall

add     $a0, $a1, $0
lw      $t0, 0xC($s5)
lw      $t1, 0xC($s6)
add     $t0, $t0, $s1
add     $t1, $t1, $s2
sll     $t1, $t1, 0x5
or      $a0, $a0, $t0
or      $a0, $a0, $t1
syscall

bne     $a1, 0x400, FLUSH_RETURN

COPY_TO_MEM:
add     $v0, $0, 0x23
addi    $a0, $0, 0x10
EACH_X:
addi    $a0, $a0, -1
syscall
bne     $a0, $0, EACH_X
j       FLUSH_RETURN

add     $v0, $0, 0x24
syscall

FLUSH_RETURN:
jr      $ra



SLEEP:
SLEEP_LOOP:
addi    $a0, $a0, -1
bne     $a0, $0, SLEEP_LOOP
jr      $ra


# decode the block state
# and save it to
#   0x80 0x84 0x88 0x8C
#   0x90 0x94 0x98 0x9C
# in use:
#   t0 -> encoded state
#   t1 -> result
DECODE:
sll     $t0, $s0, 0x2
lw      $t0, ($t0) 

andi    $t1, $t0, 0x3
sw      $t1, ($s5)
srl     $t0, $t0, 0x2
andi    $t1, $t0, 0x3
sw      $t1, ($s6)

srl     $t0, $t0, 0x2

andi    $t1, $t0, 0x3
sw      $t1, 0x4($s5)
srl     $t0, $t0, 0x2
andi    $t1, $t0, 0x3
sw      $t1, 0x4($s6)

srl     $t0, $t0, 0x2

andi    $t1, $t0, 0x3
sw      $t1, 0x8($s5)
srl     $t0, $t0, 0x2
andi    $t1, $t0, 0x3
sw      $t1, 0x8($s6)

srl     $t0, $t0, 0x2

andi    $t1, $t0, 0x3
sw      $t1, 0xC($s5)
srl     $t0, $t0, 0x2
andi    $t1, $t0, 0x3
sw      $t1, 0xC($s6)
jr      $ra

# from 0x00 to 0x50 save the block states
# from 0x100 to 0x150 save the block index map
LOAD_DATA:
ori     $t0, $0, 0xC840
sw      $t0, ($0)
ori     $t0, $0, 0x3210
sw      $t0, 0x4($0)
ori     $t0, $0, 0x5410
sw      $t0, 0x8($0)
ori     $t0, $0, 0x5410
sw      $t0, 0xC($0)
ori     $t0, $0, 0x6510
sw      $t0, 0x10($0)
ori     $t0, $0, 0x8541
sw      $t0, 0x14($0)
ori     $t0, $0, 0x5421
sw      $t0, 0x18($0)
ori     $t0, $0, 0x9540
sw      $t0, 0x1C($0)
ori     $t0, $0, 0x6541
sw      $t0, 0x20($0)
ori     $t0, $0, 0x9651
sw      $t0, 0x24($0)
ori     $t0, $0, 0x9654
sw      $t0, 0x28($0)
ori     $t0, $0, 0x9541
sw      $t0, 0x2C($0)
ori     $t0, $0, 0x6542
sw      $t0, 0x30($0)
ori     $t0, $0, 0xA951
sw      $t0, 0x34($0)
ori     $t0, $0, 0x8654
sw      $t0, 0x38($0)
ori     $t0, $0, 0x9510
sw      $t0, 0x3C($0)
ori     $t0, $0, 0x6540
sw      $t0, 0x40($0)
ori     $t0, $0, 0x9521
sw      $t0, 0x44($0)
ori     $t0, $0, 0xA654
sw      $t0, 0x48($0)
ori     $t0, $0, 0x9851
sw      $t0, 0x4C($0)
jr	    $ra
