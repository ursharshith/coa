include 'emu8086.inc'
      mov si,0 
      print "enter the arr size:"
      call scan_num
      mov bx,cx
      mov d,2 
      ;a db 1,2,3,4,5,6 
       printn
       print "enter the  numbers:"
       printn
      f:
          call scan_num
          mov a[si],cl
          printn
          inc si
          cmp si,bx
          jb f
          mov si,0
        count:  
         mov ax,00
         mov al,a[si]
         div d
         cmp ah,00
         je ec
         inc o 
         jmp c
       ec:
         inc e
        c:  
        inc si
          cmp si,bx
          jb count
        p:
          print "odd count:"
          printn
          mov al,o  
          mov ah,0
          call print_num
          printn
          print "even count:"
          printn 
          mov ah,0
          mov al,e
          call print_num  
          hlt
o db 00
e db 00   
x dw 00   
d db 00
a db ?,?
define_scan_num
define_print_num
define_print_num_uns