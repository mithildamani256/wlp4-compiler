; BEGIN MAIN PROLOGUE
.import print
.import init
.import new
.import delete
lis $4
.word 4
lis $11
.word 1
sub $29, $30, $4
lis $12
.word 16
sub $30, $30, $12
sw $1, 0($29)
sw $2, -4($29)
sw $31,-4($30)
sub $30, $30, $4
lis $5
.word init
jalr $5
add $30, $30, $4
lw $31, -4($30)
; END MAIN PROLOGUE

Fmain:
lis $3
.word 0
sw $3, -8($29)
sub $30, $30, $4
sw $3, -8($29)
lis $3
.word 0
sw $3, -12($29)
sub $30, $30, $4
sw $3, -12($29)
WHILE0:
lw $3, -12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -4($29)
add $30, $30, $4
lw $5, -4($30)
slt $3, $5, $3
beq $3, $0, WHILE1
sw $1,-4($30)
sub $30, $30, $4
lw $3, 0($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -12($29)
mult $3, $4
mflo $3
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
lw $3, 0($3)
add $1, $3, $0
sw $31,-4($30)
sub $30, $30, $4
lis $5
.word print
jalr $5
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $1, -4($30)
lw $3, -12($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 1
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
sw $3, -12($29)
beq $0, $0, WHILE0
WHILE1:
sw $29,-4($30)
sub $30, $30, $4
sw $31,-4($30)
sub $30, $30, $4
lw $3, 0($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 0
sw $3,-4($30)
sub $30, $30, $4
lw $3, -4($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 1
add $30, $30, $4
lw $5, -4($30)
sub $3, $5, $3
sw $3,-4($30)
sub $30, $30, $4
lis $5
.word FfastSort
jalr $5
lis $5
.word 12
add$30, $30, $5
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $29, -4($30)
sw $3, -8($29)
lis $3
.word 0
sw $3, -12($29)
WHILE2:
lw $3, -12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -4($29)
add $30, $30, $4
lw $5, -4($30)
slt $3, $5, $3
beq $3, $0, WHILE3
sw $1,-4($30)
sub $30, $30, $4
lw $3, 0($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -12($29)
mult $3, $4
mflo $3
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
lw $3, 0($3)
add $1, $3, $0
sw $31,-4($30)
sub $30, $30, $4
lis $5
.word print
jalr $5
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $1, -4($30)
lw $3, -12($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 1
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
sw $3, -12($29)
beq $0, $0, WHILE2
WHILE3:
lis $3
.word 0

; BEGIN MAIN EPILOGUE
add $30, $29, $4
jr $31
; END MAIN EPILOGUE

; BEGIN PROCEDURE fastSort PROLOGUE
FfastSort:
sub $29, $30, $4
lis $3
.word 0
sw $3, 0($29)
sub $30, $30, $4
sw $3, 0($29)
lis $3
.word 0
sw $3, -4($29)
sub $30, $30, $4
sw $3, -4($29)
sw $1,-4($30)
sub $30, $30, $4
sw $2,-4($30)
sub $30, $30, $4
sw $5,-4($30)
sub $30, $30, $4
sw $29,-4($30)
sub $30, $30, $4
sw $31,-4($30)
sub $30, $30, $4
; END PROCEDURE fastSort PROLOGUE

lw $3, 8($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 0
add $30, $30, $4
lw $5, -4($30)
slt $3, $5, $3
beq $3, $0, IF4
lis $3
.word 1
sw $3, 0($29)
beq $0, $0, IF5
IF4:
IF5:
lw $3, 4($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 0
add $30, $30, $4
lw $5, -4($30)
slt $3, $5, $3
beq $3, $0, IF6
lis $3
.word 1
sw $3, 0($29)
beq $0, $0, IF7
IF6:
IF7:
lw $3, 4($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, 8($29)
add $30, $30, $4
lw $5, -4($30)
slt $3, $3, $5
sub $3, $11, $3
beq $3, $0, IF8
lis $3
.word 1
sw $3, 0($29)
beq $0, $0, IF9
IF8:
IF9:
lw $3, 0($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 0
add $30, $30, $4
lw $5, -4($30)
slt $6, $3, $5
slt $7, $5, $3
add $3, $6, $7
sub $3, $11, $3
beq $3, $0, IF10
sw $29,-4($30)
sub $30, $30, $4
sw $31,-4($30)
sub $30, $30, $4
lw $3, 12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, 8($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, 4($29)
sw $3,-4($30)
sub $30, $30, $4
lis $5
.word Fpartition
jalr $5
lis $5
.word 12
add$30, $30, $5
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $29, -4($30)
sw $3, -4($29)
sw $29,-4($30)
sub $30, $30, $4
sw $31,-4($30)
sub $30, $30, $4
lw $3, 12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, 8($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -4($29)
sw $3,-4($30)
sub $30, $30, $4
lis $5
.word FfastSort
jalr $5
lis $5
.word 12
add$30, $30, $5
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $29, -4($30)
sw $3, 0($29)
sw $29,-4($30)
sub $30, $30, $4
sw $31,-4($30)
sub $30, $30, $4
lw $3, 12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -4($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 1
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
sw $3,-4($30)
sub $30, $30, $4
lw $3, 4($29)
sw $3,-4($30)
sub $30, $30, $4
lis $5
.word FfastSort
jalr $5
lis $5
.word 12
add$30, $30, $5
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $29, -4($30)
sw $3, 0($29)
beq $0, $0, IF11
IF10:
IF11:
lis $3
.word 0
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $29, -4($30)
add $30, $30, $4
lw $5, -4($30)
add $30, $30, $4
lw $2, -4($30)
add $30, $30, $4
lw $1, -4($30)

; BEGIN PROCEDURE fastSort EPILOGUE
add $30, $29, $4
jr $31
; END PROCEDURE fastSort EPILOGUE

; BEGIN PROCEDURE partition PROLOGUE
Fpartition:
sub $29, $30, $4
lis $3
.word 0
sw $3, 0($29)
sub $30, $30, $4
sw $3, 0($29)
lis $3
.word 0
sw $3, -4($29)
sub $30, $30, $4
sw $3, -4($29)
lis $3
.word 0
sw $3, -8($29)
sub $30, $30, $4
sw $3, -8($29)
lis $3
.word 0
sw $3, -12($29)
sub $30, $30, $4
sw $3, -12($29)
lis $3
.word 0
sw $3, -16($29)
sub $30, $30, $4
sw $3, -16($29)
lis $3
.word 0
sw $3, -20($29)
sub $30, $30, $4
sw $3, -20($29)
sw $1,-4($30)
sub $30, $30, $4
sw $2,-4($30)
sub $30, $30, $4
sw $5,-4($30)
sub $30, $30, $4
sw $29,-4($30)
sub $30, $30, $4
sw $31,-4($30)
sub $30, $30, $4
; END PROCEDURE partition PROLOGUE

lw $3, 12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, 8($29)
mult $3, $4
mflo $3
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
lw $3, 0($3)
sw $3, 0($29)
lw $3, 8($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 1
add $30, $30, $4
lw $5, -4($30)
sub $3, $5, $3
sw $3, -4($29)
lw $3, 4($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 1
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
sw $3, -8($29)
WHILE12:
lw $3, -16($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 0
add $30, $30, $4
lw $5, -4($30)
slt $6, $3, $5
slt $7, $5, $3
add $3, $6, $7
sub $3, $11, $3
beq $3, $0, WHILE13
lw $3, -4($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 1
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
sw $3, -4($29)
WHILE14:
lw $3, 12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -4($29)
mult $3, $4
mflo $3
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
lw $3, 0($3)
sw $3,-4($30)
sub $30, $30, $4
lw $3, 0($29)
add $30, $30, $4
lw $5, -4($30)
slt $3, $5, $3
beq $3, $0, WHILE15
lw $3, -4($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 1
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
sw $3, -4($29)
beq $0, $0, WHILE14
WHILE15:
lw $3, -8($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 1
add $30, $30, $4
lw $5, -4($30)
sub $3, $5, $3
sw $3, -8($29)
WHILE16:
lw $3, 12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -8($29)
mult $3, $4
mflo $3
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
lw $3, 0($3)
sw $3,-4($30)
sub $30, $30, $4
lw $3, 0($29)
add $30, $30, $4
lw $5, -4($30)
slt $3, $3, $5
beq $3, $0, WHILE17
lw $3, -8($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 1
add $30, $30, $4
lw $5, -4($30)
sub $3, $5, $3
sw $3, -8($29)
beq $0, $0, WHILE16
WHILE17:
lw $3, -4($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -8($29)
add $30, $30, $4
lw $5, -4($30)
slt $3, $5, $3
sub $3, $11, $3
beq $3, $0, IF18
lw $3, -8($29)
sw $3, -20($29)
lis $3
.word 241
sw $3, -16($29)
beq $0, $0, IF19
IF18:
IF19:
lw $3, -16($29)
sw $3,-4($30)
sub $30, $30, $4
lis $3
.word 241
add $30, $30, $4
lw $5, -4($30)
slt $6, $3, $5
slt $7, $5, $3
add $3, $6, $7
beq $3, $0, IF20
lw $3, 12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -4($29)
mult $3, $4
mflo $3
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
lw $3, 0($3)
sw $3, -12($29)
lw $3, 12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -8($29)
mult $3, $4
mflo $3
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
lw $3, 0($3)
sw $3,-4($30)
sub $30, $30, $4
lw $3, 12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -4($29)
mult $3, $4
mflo $3
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
add $30, $30, $4
lw $5, -4($30)
sw $5, 0($3)
lw $3, -12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, 12($29)
sw $3,-4($30)
sub $30, $30, $4
lw $3, -8($29)
mult $3, $4
mflo $3
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
add $30, $30, $4
lw $5, -4($30)
sw $5, 0($3)
beq $0, $0, IF21
IF20:
IF21:
beq $0, $0, WHILE12
WHILE13:
lw $3, -20($29)
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $29, -4($30)
add $30, $30, $4
lw $5, -4($30)
add $30, $30, $4
lw $2, -4($30)
add $30, $30, $4
lw $1, -4($30)

; BEGIN PROCEDURE partition EPILOGUE
add $30, $29, $4
jr $31
; END PROCEDURE partition EPILOGUE

