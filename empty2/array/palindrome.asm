include 'emu8086.inc'
mov si,0  
mov n,10
print "enter size:"
call scan_num   
mov bx,cx 
printn
print "enter numbers:"
f:
  call scan_num
  mov a[si],cl
  printn
  inc si
  cmp si,bx
  jb f
  mov si,0 
  f2:
  mov al,a[si]
  f1:
    cmp al,00
    je p
    mov ah,0
    div n
    mov q,al 
    mov r,ah
    mov al,sum
    mul n  
    mov ah,r
    add al,ah
    mov sum,al
    mov al,q
    jmp f1
 p:   
   mov ah,0
   mov al,a[si]
   cmp al,sum
   je p1 
   call print_num
   print " is not a palindrome "
   printn
   jmp case
  p1:
    call print_num
   print " is a palindrome "
   printn   
   case:
    mov sum,0
    inc si
    cmp si,bx
    jb f2
    hlt
   

;a db 121,3,23
sum db 00
n db 00
q db 00 
r db 00
a db ? 
define_scan_num
define_print_num
define_print_num_uns