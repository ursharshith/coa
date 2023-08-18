include 'emu8086.inc'
print "enter n1:"
call scan_num
mov ax,cx  
mov n,ax
printn
print "enter n2:"
call scan_num
mov bx,cx
printn
mov t,01
f:
  mov ax,n
  mul t
  mov dx,00
  div bx
  cmp dx,00
  je p 
  inc t
  jmp f
  
p:
  mul bx
  call print_num
  hlt 
  n dw 00
  t dw 00
  define_scan_num
  define_print_num
  define_print_num_uns
  