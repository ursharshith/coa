include 'emu8086.inc'
print "enter n1:"
call scan_num
mov ax,cx
printn
print "enter n2:"
call scan_num
mov bx,cx
printn
f:
  mov dx,00
  div bx
  cmp dx,00
  je p
  mov ax,bx
  mov bx,dx
  jmp f
 p:
   mov ax,bx
   call print_num
   
   
define_scan_num
define_print_num
define_print_num_uns
