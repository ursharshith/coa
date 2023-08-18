;decimal to binary
include 'emu8086.inc'  
print "enter decimal number:"
call scan_num     
printn
mov ax,cx    
mov bx,10
mov d,2
mov s,0
mov i,1
f:  
   mov dx,00
   div d
   mov q,ax
   mov ax,dx
   mul i
   add s,ax
   mov ax,i
   mul bx
   mov i,ax
   mov ax,q
   cmp ax,01
   je p 
   cmp ax,00
   je p
   jmp f
 p: 
   mul i
   add ax,s
   call print_num
 n dw 00
 d dw 00
 s dw 00
 i dw 00
 q dw 00
 r dw 00
 define_scan_num
 define_print_num
 define_print_num_uns  