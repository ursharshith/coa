include 'emu8086.inc'
  data segment
    a db 1,2,3,4,5  
    sum db 00
    data ends
  code segment
    start:
      mov ax,data
      mov ds,ax  
      mov bx,05
 s:
   mov al,a[si] 
   add al,sum
   mov sum,al 
   inc si
   cmp si,bx
   jne s  
   p:
      mov al,sum 
      mov ah,0
      call print_num     
      hlt
   
define_scan_num
define_print_num
define_print_num_uns   
  code ends
  end start