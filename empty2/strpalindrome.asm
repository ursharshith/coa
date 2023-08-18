include "emu8086.inc"
mov si,0  
mov di,0
 
f: 
cmp a[si],'$'
je p
inc si
jmp f

p:
mov ax,si
call print_num
printn
sub si,1
d:
cmp di,si
jge p1 
mov al,a[si]
cmp al,a[di]
jne p2
inc di
dec si
jmp d

p1:
print "palindrome"
hlt

p2:
print "not a palindrome"
hlt

a db "madam$"
define_print_num
define_print_num_uns