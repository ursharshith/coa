include 'emu8086.inc'
mov si,0
mov bx,6
f:
  call scan_num
  mov a[si],cl
  printn
  inc si
  cmp si,bx
  jb f
   mov si,0
  p:      
    mov al,a[si]
    call print_num  
    printn
     inc si
     cmp si,bx
     jb p
     hlt
    







a db ?
define_scan_num
define_print_num
define_print_num_uns