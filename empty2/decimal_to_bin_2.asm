include "emu8086.inc"
print "Enter number:"
call scan_num
mov n,cx
gotoxy 0,3
mov ax,n
mov cx,16

loop1:
shl ax,1
jc print1
jnc print2

print1:
print "1"
dec cx
jmp exit

print2:
print "0"
dec cx
jmp exit

exit:
cmp cx,00
jne loop1
ret
n dw 00
define_scan_num
define_print_num
define_print_num_uns