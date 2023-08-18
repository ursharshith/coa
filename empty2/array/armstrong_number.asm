include 'emu8086.inc'
print "enter size:"
call scan_num 
;a db 153,23,2
mov bx,3
printn
mov si,0 
mov n,10  
print "enter numbers:"
f:
  call scan_num
  mov a[si],cl  
  printn
 inc si
  cmp si,bx
  jb f
 mov si,0
  f1:
    mov al,a[si]
    c1:
      mov ah,0
      div n
      inc c
      cmp al,0
      je f2
      jmp c1  
      f2:   
        cmp c,01
        je p2 
        mov al,a[si] 
       x:
        mov ah,0
        div n
        mov q,al 
        mov r,ah
        mov al,r
        mov cl,c 
         m:
           cmp c,1
            je f3
            mul r
            dec c
            jmp m 
            f3:
              add sum,al  
              mov c,cl
              mov al,q
              cmp al,00
              je p1 
              jmp x
              p1:
                mov al,sum 
                jmp p
              p2:
                mov al,a[si]
       p:   
         mov ah,0
         cmp a[si],al
         je arm   
         mov al,a[si]
         call print_num
         print " is not armstrong number"
         printn
         jmp case
       arm:
          call print_num
         print " is armstrong number"
         printn     
       case:
         mov c,0
         mov sum,0
         inc si
         cmp si,bx
         jb f1
         hlt
n db 00 
r db 00
c db 00 
q db 00
sum db 00 
a db ?     
define_scan_num
define_print_num
define_print_num_uns