include 'emu8086.inc'
mov si,0   
mov al,1 
f:   
  mov bl,al
  mov cl,al 
  f1:
  cmp cl,1
  je p
  dec cl
  mul cl
  jmp f1
p:
  mov a[si],al
  inc si
  inc bl
  mov al,bl
  cmp si,5
  jb f
  mov si,0
d:
  mov al,a[si]
  call print_num
  print " "
  inc si
  cmp si,5
  jb d
  hlt

a db ? 
define_scan_num
define_print_num
define_print_num_uns