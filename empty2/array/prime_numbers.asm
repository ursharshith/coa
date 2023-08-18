include 'emu8086.inc'
print "enter size:"
call scan_num
mov bx,cx
printn
mov si,0
print "enter the numbers:"
f:
  call scan_num
  mov a[si],cl
  printn
  inc si
  cmp si,bx
  jb f
  mov si,0
  print "prime numbers are:"
  printn
 f1:
   mov cl,a[si]
   f2: 
    cmp cl,00
    je p
     mov al,a[si] 
     mov ah,0
     div cl 
     cmp ah,00
     je c
     dec cl
     jmp f2
  c:
    inc count
    dec cl
    jmp f2
   p:
    cmp count,2
    je p1
    jne a1
  p1:
    mov al,a[si]
    mov ah,0
    call print_num
    print " "
  a1:
     mov count,0
     inc si
     cmp si,bx
     jb f1
     hlt
  count db 0
a db ?  
define_scan_num
define_print_num
define_print_num_uns