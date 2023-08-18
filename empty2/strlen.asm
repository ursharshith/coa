include "emu8086.inc"
mov si,0   
f:
cmp a[si],'$'
je p
inc si
jmp f

p:        
mov ax,si
call print_num
hlt  

a db "sravanth$"
define_print_num
define_print_num_uns