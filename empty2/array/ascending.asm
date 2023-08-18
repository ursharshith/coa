include 'emu8086.inc'
 data segment
    a db 3,1,5,6,4
    data ends
 
 code segment
    start:
      mov ax,data
      mov ds,ax
      lea si,a
      mov si,0
      mov di,0
      mov ax,0
      
   s:
     mov al,a[si]
     mov bl,a[si+1]
     cmp bl,al
     jbe swap
     jmp c
     
  swap:
    mov a[si],bl
    mov a[si+1],al
    jmp c
    
  c:
    inc si
     cmp si,03
     jbe s
      jmp d  
      
  d:
     inc di  
     mov si,0 
     mov ax,0
     cmp di,05
     jb s  
     jae p
     
   p:
      mov al,a[si]
      call print_num  
      inc si
      cmp si,05
      jb p  
      jae h
    h:
      hlt       
      define_print_num
      define_print_num_uns
 code ends
 end start