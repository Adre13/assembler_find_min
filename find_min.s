.section .data
MY_ARRAY:
.long 42,18,24,75,13,94,7,18,22
.section .text
.global _start
_start:
movl $0, %esi
movl $8, %ebx
CHANGE_VAL:
movl MY_ARRAY(,%esi,4), %edx
CHECK_SIZE:
cmp %esi, %ebx
je EXIT
add $1, %esi
cmp MY_ARRAY(,%esi,4), %edx
jg CHANGE_VAL
jng CHECK_SIZE

EXIT:
movl %edx, %ebx
movl $1, %eax
int $0x80
