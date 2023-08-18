include 'emu8086.inc'     
sum db 00
mov si,0
mov bx,5
print "enter number:"
printn
f:
  call scan_num
  mov a[si],cl
  printn
  inc si
  cmp si,bx
  jne f
  mov si,0
 s:
   mov al,a[si] 
   add sum,al  
   inc si
   cmp si,bx
   jb s  
   p:
      mov al,sum
      call print_num
 a db ?  
define_scan_num
define_print_num
define_print_num_uns