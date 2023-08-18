include 'emu8086.inc'
mov si,0
print "enter n:"
call scan_num
mov bx,cx
printn 
print "enter numbers:"
i:
  call scan_num
  mov a[si],cl 
  printn
  inc si
  cmp si,bx
  jb i
  mov si,0 
  mov cl,a[si] 
  mov min,cl
 f:
   mov al,a[si]
   cmp min,al
   jg p
   jmp p1
 p:
   mov min,al
   p1:
     inc si 
     cmp si,bx
     jb f
     mov al,min
     call print_num
     hlt
min db 00   
a db ?,? 
define_scan_num
define_print_num
define_print_num_uns