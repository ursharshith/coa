include "emu8086.inc"
mov si,0
mov di,0      
f:
cmp b[di],'$'
je l2 
mov al,a[si]
cmp al,b[di]
je l1
cmp a[si],'$'
je l3 
inc si
mov di,0
jmp f

l3:
print "no"
hlt
   
l1:
inc si
inc di
jmp f

l2:
print "yes"
hlt

a db "abcd$"
b db "bc$"
