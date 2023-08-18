include 'emu8086.inc'
print "enter size:"
call scan_num
mov bx,cx 
;a db 6,2,3,11,28
printn
print "enter numbers:"    
mov si,0
f:
  call scan_num
  mov a[si],cl 
  printn
  inc si
  cmp si,bx
  jb f 
  mov si,0
  b:
   ;mov al,a[si] 
   mov dl,1
   f1: 
      cmp dl,a[si]
      jae p  
      mov al,a[si]
      mov ah,00
      div dl 
      cmp ah,00
      je f2 
      inc dl
      jmp f1    
   f2:
      add sum,dl 
      inc dl
      jmp f1
      
  p:  
    mov al,sum
    cmp a[si],al
    je p1
    jne a1
   p1:   
   mov ah,0
     call print_num
     print " is perfect number at index:"
     mov ax,si
     call print_num
     printn
   a1:
     inc si 
     mov sum,0
     cmp si,bx 
     jb b
     hlt

n db 00
sum db 00  
a db ? 
define_scan_num
define_print_num
define_print_num_uns