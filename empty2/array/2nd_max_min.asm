include 'emu8086.inc'   
mov si,0  
mov di,0
print "enter arr size:"
call scan_num
sub cx,1  ;to equal index value
mov dx,cx 
printn
 print "enter numbers:"
 printn
 f:
   call scan_num
   mov a[si],cl
   printn
   inc si
   cmp si,dx
   jbe f  
   mov si,0
   s:
     mov al,a[si]
     mov bl,a[si+1]
     cmp bl,al
     jbe swap
     ja assign

   swap:
     mov a[si],bl
     mov a[si+1],al
    assign:
       inc si
       cmp si,dx ;no need run upto last element, upto last 2nd element through we can check last elemment
       jb  s
    outer:
      inc di 
      mov si,0
      cmp di,dx
      jbe s  
      print "sorted array is(increasing):"
      printn 
    print:
        mov al,a[si]
        call print_num 
        ;call printspace  
        inc si
        cmp si,dx
        jbe print 
      max:   
        printn
        print "2nd max element is:"
        printn
        sub dx,1    ;last 2nd element will be the 2nd max in sorted array    
        mov si,dx
        mov al,a[si]
        call print_num 
        printn  
        print "2nd min element is:"
         mov si,1    ;2nd element is 2nd min element
        mov al,a[si]
        call print_num
        hlt
     
a db ?   
define_scan_num       
define_print_num     
define_print_num_uns