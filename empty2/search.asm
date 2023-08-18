include 'emu8086.inc'
mov si,0
print "enter n:"
call scan_num
mov bx,cx
printn  
print "enter search number:"   
call scan_num
mov e,cl
printn
print "enter numbers:"
i:
  call scan_num
  mov a[si],cl 
  printn
  inc si
  cmp si,bx
  jb i
  mov si,0
 f:
    mov al,a[si]
    cmp al,e
    je p
    inc si
    cmp si,bx 
    jb f
    je p1
  p1:
    print "element not found" 
    hlt
  p:
    print "element is found at index:"
    mov ax,si
    call print_num
    hlt
e db 00   
a db ?,? 
define_scan_num
define_print_num
define_print_num_uns