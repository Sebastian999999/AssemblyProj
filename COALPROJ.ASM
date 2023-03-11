store_value macro var1 , var2 , var3 , var4
mov cx , var1
mov dx , var2
mov var3 , cx
mov var4 , dx
endm
 
displayMessage macro var1


mov ah,02h
mov bh,00
mov al,00h
mov dh,128
mov dl,160



mov dx,offset var1
mov ah,09
int 21h

int 10h

endm 

Spaceship macro counter 
mov counter , 10
SP1: 
	mov ah , 0ch
	mov al , 09
	int 10h
	dec cx
	dec dx
	dec counter
	cmp counter , 0
	jg SP1
	add counter , 5

SP2: 
	mov ah , 0ch
	mov al , 09
	int 10h
	dec cx
	dec counter
	cmp counter , 0
	jg SP2
	add counter , 3

SP3 :
	mov ah , 0ch
	mov al , 06
	int 10h
	dec cx
	dec dx
	dec counter
	cmp counter , 0 
	jge SP3
	add counter , 4

SP4 :
	mov ah , 0ch
	mov al , 06
	int 10h
	inc dx
	dec counter
	cmp counter , 0
	jge SP4
	add cx , 5 
	add counter , 12

SP5 :
	mov ah , 0ch
	mov al , 09
	int 10h
	dec cx
	dec counter
	cmp counter , 0
	jg SP5
	add counter , 10
	inc cx

SP51 :
	 mov ah , 0ch
	 mov al , 09
	 int 10h
	 inc dx
	 dec counter
	 cmp counter , 0
	 jge SP51
	 mov counter , 3

SP52 :
	 mov ah , 0ch
	 mov al , 02
	 int 10h
	 dec cx
	 dec dx
	 dec counter
	 cmp counter , 0
	 jge SP52 
	 inc dx
	 mov counter , 5

SP53 :
	 mov ah , 0ch
	 mov al , 02
	 int 10h
	 inc dx
	 dec counter
	 cmp counter , 0
	 jge SP53
	 mov counter , 4
	 inc cx
	 dec dx

SP54 :
	 mov ah , 0ch
	 mov al , 02
	 int 10h
	 inc cx
	 dec dx
	 dec counter
	 cmp counter , 0
	 jg SP54 
	 dec cx
	 sub dx , 2 
	 mov counter , 15

SP6 :
	mov ah , 0ch
	mov al , 09
	int 10h
	inc dx
	dec counter
	cmp  counter , 0
	jg SP6
	mov counter , 5

SP7 :
	mov ah , 0ch
	mov al , 09
	int 10h
	inc cx
	dec counter
	cmp counter , 0
	jg SP7
	mov counter , 3

SP8 :
	mov ah , 0ch
	mov al , 06
	int 10h
	inc dx
	dec counter
	cmp counter , 0
	jge SP8
	mov counter , 5

SP9 :
	mov ah , 0ch
	mov al , 06
	int 10h
	dec dx
	inc cx
	dec counter
	cmp counter , 0
	jg SP9
	sub cx , 5
	inc dx
	dec cx
	mov counter , 10

SP10 :
	 mov ah , 0ch
	 mov al , 09
	 int 10h
	 inc cx
	 dec counter
	 cmp counter , 0
	 jg SP10 
	 mov counter , 11

SP11 :
	 mov ah , 0ch
	 mov al , 09
	 int 10h
	 inc cx
	 dec dx
	 dec counter
	 cmp counter , 0
	 jge SP11

endm

EraseSpaceship macro counter 
mov counter , 10
ES1 :
	mov ah , 0ch
	mov al , 00
	int 10h
	dec cx
	dec dx
	dec counter
	cmp counter , 0
	jg ES1
	add counter , 5

ES2 :
	mov ah , 0ch
	mov al , 00
	int 10h
	dec cx
	dec counter
	cmp counter , 0
	jg ES2
	add counter , 3

ES3 :
	mov ah , 0ch
	mov al , 00
	int 10h
	dec cx
	dec dx
	dec counter
	cmp counter , 0 
	jge ES3
	add counter , 4
ES4 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc dx
	dec counter
	cmp counter , 0
	jge ES4
	add cx , 5 
	add counter , 12

ES5 :
	mov ah , 0ch
	mov al , 00
	int 10h
	dec cx
	dec counter
	cmp counter , 0
	jg ES5
	add counter , 10
	inc cx

ES51 :
	 mov ah , 0ch
	 mov al , 00
	 int 10h
	 inc dx
	 dec counter
	 cmp counter , 0
	 jge ES51
	 mov counter , 3

ES52 :
	 mov ah , 0ch
	 mov al , 00
	 int 10h
	 dec cx
	 dec dx
	 dec counter
	 cmp counter , 0
	 jge ES52 
	 inc dx
	 mov counter , 5

ES53 :
	 mov ah , 0ch
	 mov al , 00
	 int 10h
	 inc dx
	 dec counter
	 cmp counter , 0
	 jge ES53
	 mov counter , 4
	 inc cx
	 dec dx

ES54 :
	 mov ah , 0ch
	 mov al , 00
	 int 10h
	 inc cx
	 dec dx
	 dec counter
	 cmp counter , 0
	 jg ES54  
	 dec cx
	 sub dx , 2 
	 mov counter , 15

ES6 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc dx
	dec counter
	cmp  counter , 0
	jg ES6
	mov counter , 5

ES7 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc cx
	dec counter
	cmp counter , 0
	jg ES7
	mov counter , 3

ES8 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc dx
	dec counter
	cmp counter , 0
	jge ES8
	mov counter , 5

ES9 :
	mov ah , 0ch
	mov al , 00
	int 10h
	dec dx
	inc cx
	dec counter
	cmp counter , 0
	jg ES9
	sub cx , 5
	inc dx
	dec cx
	mov counter , 10

ES10 :
	 mov ah , 0ch
	 mov al , 00
	 int 10h
	 inc cx
	 dec counter
	 cmp counter , 0
	 jg ES10 
	 mov counter , 11

ES11 :
	 mov  ah , 0ch
	 mov al , 00
	 int 10h
	 inc cx
	 dec dx
	 dec counter
	 cmp counter , 0
	 jge ES11
endm

EraseFire macro counter 
sub cx , 2
mov counter , 1

FF1 :
	mov ah , 0ch
	mov al , 0
	int 10h
	inc cx
	dec counter
	cmp counter , 0
	jge FF1
endm

EraseFire1 macro counter 
sub cx , 2
mov counter , 1

FF11 :
	mov ah , 0ch
	mov al , 0
	int 10h
	inc cx
	dec counter
	cmp counter , 0
	jge FF11
endm

.model large
.stack 1000h
.data
var1 dw 0
var2 dw 0
var3 dw 0
var4 dw 0
var5 dw 0
var6 dw 0

var7 dw 100 DUP (0)
var8 dw 100 DUP (0)
var9 dw 100 DUP (0)
var10 dw 100 DUP (0)

var11 dw 100 DUP (0)
var12 dw 100 DUP (0)
var13 dw 100 DUP (0)
var14 dw 100 DUP (0)

temp dw 0

enem1_x dw 100 DUP (0)
enem1_y dw 100 DUP (0)
enem2_x dw 100 DUP (0)
enem2_y dw 100 DUP (0)
enem3_x dw 100 DUP (0)
enem3_y dw 100 DUP (0)
enem4_x dw 100 DUP (0)
enem4_y dw 100 DUP (0)
enem5_x dw 100 DUP (0)
enem5_y dw 100 DUP (0)

monster1_x dw 100 DUP (0)
monster1_y dw 100 DUP (0)

monster2_x dw 100 DUP (0)
monster2_y dw 100 DUP (0)

enemdestruct_1 dw 0
enemdestruct_2 dw 0
enemdestruct_3 dw 0
enemdestruct_4 dw 0
enemdestruct_5 dw 0
enemdestruct_6 dw 0
enemdestruct_7 dw 0
enemdestruct_8 dw 0
enemdestruct_9 dw 0
enemdestruct_10 dw 0
enemdestruct_11 dw 0
enemdestruct_12 dw 0
enemdestruct_13 dw 0
enemdestruct_14 dw 0
enemdestruct_15 dw 0
enemdestruct_16 dw 0
enemdestruct_17 dw 0
enemdestruct_18 dw 0
enemdestruct_19 dw 0
enemdestruct_20 dw 0

monsterdestruct_1 dw 0
monsterdestruct_2 dw 0

destructcounter dw 0
enemMovement1 dw 0
enemMovement2 dw 0
enemMovement3 dw 0
enemMovement4 dw 0

changeDirection1 dw 0
changeDirection2 dw 0
changeDirection3 dw 0
changeDirection4 dw 0

pattern dw 0
patterns dw 0
level db 1d
life dw 0d
score dw 0
counter db 0
counter1 db 0
enmcounter dw 0
number dw 0
msg1 db '**WELCOME TO ALIEN SHOOTER GAME**','$' ;for starting screen
     
     enterNameMSG db "PLEASE ENTER USERNAME:- ","$",0ah,0dh
 
     msg2 db '1)-PLAY GAME','$',0ah,0dh    ;(seperate procedures(sub - modules )
     msg3 db '2)-SELECT LEVEL','$',0ah,0dh  ;seperate procedure (only LEVEL 1)
     msg4 db '3)-EXIT GAME!!','$',0ah,0dh  ;seperate procedures 
     msg5 db "Please! Enter Option??","$",0ah,0dh ;
     msg6 db 'THANKS! FOR PLAYING','$',0ah,0dh
	 msgl db "Please! Select your Level!!!","$",0ah,0dh
	 msgl1 db '1) Level 1','$',0ah,0dh
	 msgl2 db '2) Level 2','$',0ah,0dh
	 msgl3 db '3) Level 3','$',0ah,0dh
	 msg7 db "SCORE=  $",0ah,0dh
msg8 db "USERNAME=  $",0ah,0dh
	 msggm db 'GAME OVER!!!','$',0ah,0dh
     row_pos db 0
     col_pos db 0
      balance dw 0
    xnext dw 0
    ynext dw 0 
     ;file db "FILE STORED SUCCESSFULLY","$",0ah,0dh
     centre_x dw 100
	 centre_y dw 110
	 radius dw 28
	
     buffer db 50 dup('?')
     fhandle dw ?
     fname db 'PNAME.TXT',0
     cp db 0 ;column position
     rp db 0 ;row position
     opt db 0

.code 

FileHandling proc;macro counter;proc
mov ah,0

    mov ah,00h ;must to use h
    mov al,13h   
    int 10h

    mov ah,06h
    mov al,00h
    mov bh,0efh ;color
    mov cx,0000h
    mov dx,0418Fh
    int 10h

     call Game_Name
     call drawSquareBorder
 ;set cursor
   mov ah,02h
   mov bh,00
   
   mov dh,150 ;row
   mov dl,80 ;column
   int 10h
   mov ax,offset msg5
   mov dx,ax
   mov ah,09
   int 21h

   mov dl,32
   mov ah,02
   int 21h
 again:
   mov al,opt
   mov ah,00
   int 16h   ;wait for key press 
   sub al,48
   mov opt,al
  
   
   cmp al,1
   je l2

   .if (al == 2)
   call clear_screen
   call levelselect
   mov ah,00
   int 16h   ;wait for key press 
   sub al,48
   mov level , al
   .endif
   
   jmp exit

l2:
    xlat
      
   call clear_screen
 
 
  mov rp,00
  mov cp,200
 ;row wise
  ll5:
      mov ah,02h
  mov bh,00
  mov dh,rp
  mov dl,cp

   int 10h
      
     mov ah,09h
   mov bh,00
   mov al,'.'
    mov bl,49h
    mov cx,1
    cmp rp,200
    je f_next
   
    inc rp
    
    int 10h
    jmp ll5



f_next:
    mov dx,0
   
    .while(dx<=200) 
     mov ah,0ch
    mov cx,30
    mov al,43h
    int 10h
    add dx,2
    .endw

   mov dx,0
   .while(dx<=200)
    mov ah,0ch
    mov cx,100
    mov al,43h
    int 10h
    inc dx
   .endw

    mov dx,0
   .while(dx<=200)
    mov ah,0ch
    mov cx,170
    mov al,43h
    int 10h
    add dx,2
   .endw


     mov dx,0
   .while(dx<=200)
    mov ah,0ch
    mov cx,230
    mov al,43h
    int 10h
    inc dx
   .endw

       mov dx,0
   .while(dx<=200)
    mov ah,0ch
    mov cx,290
    mov al,43h
    int 10h
    add dx,2
   .endw


    mov ah,02h
   mov bh,00
   mov al,00h
  mov dh,05 ;row
   mov dl,120 ;column
  
   int 10h
   mov ah,3ch
   mov dx,offset fname
   mov cl,1
   int 21h
   mov fhandle,ax

   mov ah,3eh
   mov bx,fhandle
   int 21h
 
   mov ah,3dh
   mov al,02
   lea dx,fname
   int 21h
   mov fhandle,ax

      lea dx, enterNameMsg
      mov ah,09
      int 21h

     mov si,0 
     mov cx,0
l1:
     mov ah,0
     mov ah,01
     int 21h
     cmp al,13
  
     je next
    
     mov buffer[si],al
     inc si
     inc cx
    jmp l1
next:
   mov ah,40h
   mov bx,fhandle
   lea dx,buffer
   int 21h

   mov ah,3eh
   mov bx,fhandle
   int 21h

   mov ah,3fh
   lea dx,buffer
   mov cx,si
   dec cx
   mov bx,fhandle
   int 21h
   mov counter,0
   mov bx,0
 
   mov dl,10
   mov ah,02
   int 21h
ll3:
    
    mov dl,buffer[bx]
    mov ah,02
    int 21h
   cmp bx,cx
   
   je l6

   inc bx
  
  jmp ll3


l6: 
   mov ah,02h
   mov bh,00
   mov dh,136
   mov dl,160
   int 10h
   ;lea dx,file
   ;mov ah,09
   ;int 21h

   mov ah,00
   mov al,13h
   int 10h

 exit :
 ;endm
ret
FileHandling endp

clear_screen proc
    start:
  
   mov ah,06h
   mov bh,0ceh
   mov al,00h
   mov cx,0000h
   mov dx,0418Fh
   int 10h
ret
clear_screen endp

Game_Name proc
   ;print coloured message
 
   push bp
   mov bp,sp
   mov si,offset msg1
   mov cp,4
   mov rp,07
l1:
   mov ah,02
   mov bh,00h
   mov dl,cp  ;store column number
   mov dh,rp   ;row number
   int 10h
   lodsb   ;load current character from ds:si into al
   cmp al,'$'
   je l2
   mov ah,09h
   mov bh,00
   mov bl,59h  ;colour
   

   mov cx,1
   int 10h
   inc cp
  
   jmp l1

l2:
   mov si,offset msg2
   mov cp,7
   mov rp,10
l3:: 
   mov ah,02  ;set cursor to print text
   mov bh,00
   mov bl,43h
   mov dl,cp
   mov dh,rp
   int 10h
   lodsb
   cmp al,'$'
   je l4 ;next label
  
   mov ah,09h
   mov bh,00h
   mov bl,43h
   mov cx,1
   int 10h
   inc cp
   
   jmp l3

l4:
   mov si,offset msg3
   mov cp,7
   mov rp,12
l5::
   mov ah,02
   mov bh,00
   mov bl,47h
   mov dl,cp
   mov dh,rp
   int 10h
   lodsb
   cmp al,'$'
   je l6 ;next message

   mov ah,09h
   mov bh,00h
   mov bl,47h
   mov cx,1 ;no of times printing character
   int 10h
   inc cp
   jmp l5

l6:
   mov si,offset msg4
   mov cp,7
   mov rp,14
l7:
   mov ah,02
   mov bh,00
   mov bl,55h
   mov dl,cp
   mov dh,rp
   int 10h
   lodsb
   cmp al,'$'
   je fin ;to finish menu
 
   mov ah,09h
   mov bh,00h
   mov bl,55h
   mov cx,1
   int 10h
   inc cp
   jmp l7

 fin:
   pop bp
   
   
 ret
 Game_Name endp

 GameOver proc
 call clear_screen
 push bp
 mov bp,sp
 mov si,offset msg1
 mov cp,4
 mov rp,07

 l4:
   mov si,offset msggm
   mov cp,7
   mov rp,12
l555::
   mov ah,02
   mov bh,00
   mov bl,47h
   mov dl,cp
   mov dh,rp
   int 10h
   lodsb
   cmp al,'$'
   je fin ;next message

   mov ah,09h
   mov bh,00h
   mov bl,47h
   mov cx,1 ;no of times printing character
   int 10h
   inc cp
   jmp l555

l7:
   mov ah,02
   mov bh,00
   mov bl,55h
   mov dl,cp
   mov dh,rp
   int 10h
   lodsb
   cmp al,'$'
   je fin ;to finish menu
 
   mov ah,09h
   mov bh,00h
   mov bl,55h
   mov cx,1
   int 10h
   inc cp
   jmp l7

 fin:
   pop bp
 ret
 GameOver endp

 LevelSelect proc
    push bp
   mov bp,sp
   mov si,offset msgl
   mov cp,4
   mov rp,07
l1:
   mov ah,02
   mov bh,00h
   mov dl,cp  ;store column number
   mov dh,rp   ;row number
   int 10h
   lodsb   ;load current character from ds:si into al
   cmp al,'$'
   je l2
   mov ah,09h
   mov bh,00
   mov bl,59h  ;colour
   

   mov cx,1
   int 10h
   inc cp
  
   jmp l1

l2:
   mov si,offset msgl1
   mov cp,7
   mov rp,10
l33:: 
   mov ah,02  ;set cursor to print text
   mov bh,00
   mov bl,43h
   mov dl,cp
   mov dh,rp
   int 10h
   lodsb
   cmp al,'$'
   je l4 ;next label
  
   mov ah,09h
   mov bh,00h
   mov bl,43h
   mov cx,1
   int 10h
   inc cp
   
   jmp l33

l4:
   mov si,offset msgl2
   mov cp,7
   mov rp,12
l55::
   mov ah,02
   mov bh,00
   mov bl,47h
   mov dl,cp
   mov dh,rp
   int 10h
   lodsb
   cmp al,'$'
   je l6 ;next message

   mov ah,09h
   mov bh,00h
   mov bl,47h
   mov cx,1 ;no of times printing character
   int 10h
   inc cp
   jmp l55

l6:
   mov si,offset msgl3
   mov cp,7
   mov rp,14
l7:
   mov ah,02
   mov bh,00
   mov bl,55h
   mov dl,cp
   mov dh,rp
   int 10h
   lodsb
   cmp al,'$'
   je fin ;to finish menu
 
   mov ah,09h
   mov bh,00h
   mov bl,55h
   mov cx,1
   int 10h
   inc cp
   jmp l7

 fin:
   pop bp
   
   
 ret
 LevelSelect endp

 ShowScore proc
 mov ah , 00
	mov al , 13h
	int 10h
	
	displayMessage msg7
	mov dl,10
	mov ah,02
	int 21h
	
 
    mov ax,score
    mov counter,0
	l12:
	 mov dx,0
	 mov bx,10
	 div bx
	 
	 push dx
	 inc counter
	 cmp ax,0
	 je display
	 jmp l12
	 
	 display:
	 cmp counter,0
	 je l13
	 pop dx
	 add dl,48
	 mov ah,02
	 int 21h
	 dec counter
	 jmp display
	l13:
	
	
  
  
mov cx,score
dec cx
   mov counter,0
   mov bx,0
   
  
   mov dl,10
   mov ah,02
   int 21h
   
   mov dl,10
   mov ah,02
   int 21h
l333:
    
    mov dl,buffer[bx]
    mov ah,02
    int 21h
   cmp bx,cx
   
   je exit2

   inc bx
  
  jmp l333
  exit2 :
 ret
 ShowScore endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
drawSquareBorder proc
   push bx
   push dx
   push cx

   mov bx,0
   mov cx,50 ;row
   mov dx,70 ;column
topLine:
   mov ah,0Ch ;for pixels
   mov al,56h ;color code
  
   mov bh,0 ;full page no need for coordinates cx and dx
   int 10h
  

   inc cx
   inc bx
   cmp cx,243  ;unitl row reach position 270
   jne topline
   
    mov bx,0
    mov cx,305  ;row
    mov dx,366  ;column

    
    
bottomLine:
    mov ah,0ch
    mov al,45h
    push bx
    mov bh,00
    int 10h
    pop bx
 
    inc cx
    inc bx
    cmp cx,498
    jne bottomLine
   
    mov bx,0
    mov cx,50  ;row(x)
    add cx,25
    mov dx,50   ;col (y)

    mov dx,20
    add dx,141
    mov cx,50

    leftLine:
     mov ah,0ch
     mov al,65h
     mov bh,00
     push bx
     int 10h
     pop bx 
     
     dec dx
     cmp dx,70
     jae leftLine
   
    mov dx,559
    add dx,218
    mov cx,50


    rightLine:
       mov ah,0ch
       mov bh,00
       mov al,48h
       push bx
       int 10h
       pop bx
       dec dx
       
       cmp dx,685
       jae rightLine



     
   
    pop cx
    pop dx
    pop bx

ret 
drawSquareBorder endp

EnemyDesign1 proc;macro counter 
mov counter , 10
ED11 :
	mov ah , 0ch
	mov al , 07
	int 10h
	inc cx
	inc dx
	dec counter
	cmp counter , 0
	jg ED11
	dec dx
	mov counter , 10
	sub cx , 10

ED12 :
	mov ah , 0ch
	mov al , 07
	int 10h
	dec dx
	inc cx
	dec counter 
	cmp counter , 0
	jg ED12 
	ret
EnemyDesign1 endp
;endm 

EraseEnemyDesign1 proc ;macro counter  

mov counter , 10
EED11 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc cx
	inc dx
	dec counter
	cmp counter , 0
	jg EED11
	dec dx
	mov counter , 10
	sub cx , 10

EED12 :
	mov ah , 0ch
	mov al , 00
	int 10h
	dec dx
	inc cx
	dec counter 
	cmp counter , 0
	jg EED12
ret
EraseEnemyDesign1 endp
;endm

EnemyDesign2 proc;macro counter 
mov counter , 9
ED21 :
	mov ah , 0ch
	mov al , 07
	int 10h
	inc cx
	inc dx
	dec counter
	cmp counter , 0
	jg ED21
	dec dx
	mov counter , 9
	sub cx , 9
ED22 :
	mov ah , 0ch
	mov al , 07
	int 10h
	dec dx
	inc cx
	dec counter 
	cmp counter , 0
	jg ED22
	mov counter , 9
	sub cx , 5
	inc dx

ED23 :
	mov ah , 0ch
	mov al , 07
	int 10h
	inc dx
	dec counter
	cmp counter , 0
	jg ED23
	ret
EnemyDesign2 endp ;endm 

EraseEnemyDesign2 proc ;macro counter 
mov counter , 9
EED21 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc cx
	inc dx
	dec counter
	cmp counter , 0
	jg EED21
	dec dx
	mov counter , 9
	sub cx , 9
EED22 :
	mov ah , 0ch
	mov al , 00
	int 10h
	dec dx
	inc cx
	dec counter 
	cmp counter , 0
	jg EED22
	mov counter , 9
	sub cx , 5
	inc dx

EED23 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc dx
	dec counter
	cmp counter , 0
	jg EED23
ret
EraseEnemyDesign2 endp ;endm  

EnemyDesign3 proc ;macro counter  
mov counter , 9
ED31 :
	mov ah , 0ch
	mov al , 03
	int 10h
	inc cx
	inc dx
	dec counter
	cmp counter , 0
	jg ED31
	dec dx
	mov counter , 9
	sub cx , 9

ED32 :
	mov ah , 0ch
	mov al , 03
	int 10h
	dec dx
	inc cx
	dec counter 
	cmp counter , 0
	jg ED32
	mov counter , 9
	sub cx , 5
	inc dx

ED33 :
	mov ah , 0ch
	mov al , 04
	int 10h
	inc dx
	dec counter
	cmp counter , 0
	jg ED33
	mov counter , 9
	sub dx , 5
	sub cx , 4

ED34 :
	mov ah , 0ch
	mov al , 04
	int 10h
	inc cx
	dec counter
	cmp counter , 0
	jg ED34
	ret
EnemyDesign3 endp;endm 

EraseEnemyDesign3 proc ;macro counter  
mov counter , 9
EED31 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc cx
	inc dx
	dec counter
	cmp counter , 0
	jg EED31
	dec dx
	mov counter , 9
	sub cx , 9

EED32 :
	mov ah , 0ch
	mov al , 00
	int 10h
	dec dx
	inc cx
	dec counter 
	cmp counter , 0
	jg EED32
	mov counter , 9
	sub cx , 5
	inc dx

EED33 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc dx
	dec counter
	cmp counter , 0
	jg EED33
	mov counter , 9
	sub dx , 5
	sub cx , 4

EED34 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc cx
	dec counter
	cmp counter , 0
	jg EED34
ret
EraseEnemyDesign3 endp; endm

EnemyDesign4 proc ;macro counter 
mov counter , 10
add dx , 4
ED41 :
	mov ah , 0ch
	mov al , 01
	int 10h
	inc cx
	inc dx
	dec counter
	cmp counter , 0
	jg ED41
	mov counter , 10
	sub cx , 10
	sub dx , 10

ED42 :
	mov ah , 0ch
	mov al , 01
	int 10h
	dec dx
	inc cx
	dec counter 
	cmp counter , 0
	jg ED42
	mov counter , 8
	sub cx , 5
	add dx , 6

ED43 :
	mov ah , 0ch
	mov al , 02
	int 10h
	inc dx
	dec counter
	cmp counter , 0
	jge ED43
	ret
EnemyDesign4 endp;endm

EraseEnemyDesign4 proc ;macro counter 
mov counter , 10
add dx , 4
EED41 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc cx
	inc dx
	dec counter
	cmp counter , 0
	jg EED41
	mov counter , 10
	sub cx , 10
	sub dx , 10

EED42 :
	mov ah , 0ch
	mov al , 00
	int 10h
	dec dx
	inc cx
	dec counter 
	cmp counter , 0
	jg EED42
	mov counter , 8
	sub cx , 5
	add dx , 6

EED43 :
	mov ah , 0ch
	mov al , 00
	int 10h
	inc dx
	dec counter
	cmp counter , 0
	jge EED43
ret
EraseEnemyDesign4 endp ;endm

Explosion proc
mov ah , 0ch
mov al , 11
int 10h

add cx , 2

mov ah , 0ch
mov al , 12
int 10h

add cx , 2

mov ah , 0ch
mov al , 13
int 10h

add cx , 2

mov ah , 0ch
mov al , 14
int 10h

sub cx , 2
add dx , 2 

mov ah , 0ch
mov al , 15
int 10h

sub cx , 2
add dx , 2 

mov ah , 0ch
mov al , 16
int 10h

sub cx , 2
add dx , 2 

mov ah , 0ch
mov al , 17
int 10h

add cx , 2 

mov ah , 0ch
mov al , 18
int 10h

add cx , 2 

mov ah , 0ch
mov al , 19
int 10h

add cx , 2 

mov ah , 0ch
mov al , 20
int 10h

sub dx , 2
sub cx , 2
mov ah , 0ch
mov al , 21
int 10h

sub dx , 2
sub cx , 2
mov ah , 0ch
mov al , 22
int 10h

mov bp , 10000
	mov si , 1
	jmp timer1
	jmp exit

timer1 :
	dec bp
	nop
	jnz timer1
	dec si
	cmp si , 0
	jnz timer1 
exit :
ret
Explosion endp

EraseExplosion proc
mov ah , 0ch
mov al , 00
int 10h

add cx , 2

mov ah , 0ch
mov al , 00
int 10h

add cx , 2

mov ah , 0ch
mov al , 00
int 10h

add cx , 2

mov ah , 0ch
mov al , 00
int 10h

sub cx , 2
add dx , 2 

mov ah , 0ch
mov al , 00
int 10h

sub cx , 2
add dx , 2 

mov ah , 0ch
mov al , 00
int 10h

sub cx , 2
add dx , 2 

mov ah , 0ch
mov al , 00
int 10h

add cx , 2 

mov ah , 0ch
mov al , 00
int 10h

add cx , 2 

mov ah , 0ch
mov al , 00
int 10h

add cx , 2 

mov ah , 0ch
mov al , 00
int 10h

sub dx , 2
sub cx , 2
mov ah , 0ch
mov al , 00
int 10h

sub dx , 2
sub cx , 2
mov ah , 0ch
mov al , 00
int 10h

exit :
ret
EraseExplosion endp

EnemyDesign5 proc ;macro counter
mov counter , 1
ED51 :
	  mov ah , 0ch
	  mov al , 01
	  int 10h
	  mov counter , 3
	  dec cx 
	  inc dx

ED52 :
	  mov ah , 0ch
	  mov al , 01
	  int 10h
	  inc cx
	  dec counter
	  cmp counter , 0
	  jnz ED52 
	  mov counter , 5
	  sub cx , 4

ED53 :
	  mov ah , 0ch
	  mov al , 01
	  int 10h
	  inc cx
	  dec counter
	  cmp counter , 0
	  jnz ED53 
	  ;mov counter , 5
	  ;sub cx , 4
	  ret
EnemyDesign5 endp

EraseEnemyDesign5 proc ;macro counter
mov counter , 1
ED51 :
	  mov ah , 0ch
	  mov al , 00
	  int 10h
	  mov counter , 3
	  dec cx 
	  inc dx

ED52 :
	  mov ah , 0ch
	  mov al , 00
	  int 10h
	  inc cx
	  dec counter
	  cmp counter , 0
	  jnz ED52 
	  mov counter , 5
	  sub cx , 4

ED53 :
	  mov ah , 0ch
	  mov al , 00
	  int 10h
	  inc cx
	  dec counter
	  cmp counter , 0
	  jnz ED53 
	  ;mov counter , 5
	  ;sub cx , 4
	  ret
EraseEnemyDesign5 endp

Fire Macro counter 
inc dx
inc cx
inc cx
mov counter , 1
jmp F1

FF :
	EraseFire counter

F1 :
	mov ah , 0ch
	mov al , 8
	int 10h
	inc cx
	dec counter
	cmp counter , 0
	jge F1
	mov counter , 1
	mov bp , 1000
	mov si , 1
	jmp timer
	jmp range

timer :
	dec bp
	nop
	jnz timer
	dec si
	cmp si , 0
	jnz timer

range :
	.if (cx <= 315)
	
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem1_x]
	mov dx , [enem1_y]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_1 == 0) 
	.if (dx >= [enem1_y] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_1
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem1_x]
	mov dx , [enem1_y]
	call EraseEnemyDesign1
	mov cx , [enem1_x]
	mov dx , [enem1_y]
	call Explosion
	mov cx , [enem1_x]
	mov dx , [enem1_y]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem1_x + 2]
	mov dx , [enem1_y + 2]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_2 == 0) 
	.if (dx >= [enem1_y + 2] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_2
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem1_x + 2]
	mov dx , [enem1_y + 2]
	call EraseEnemyDesign2
	mov cx , [enem1_x + 2]
	mov dx , [enem1_y + 2]
	call Explosion
	mov cx , [enem1_x + 2]
	mov dx , [enem1_y + 2]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem1_x + 4]
	mov dx , [enem1_y + 4]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_3 == 0) 
	.if (dx >= [enem1_y + 4] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_3
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem1_x + 4]
	mov dx , [enem1_y + 4]
	call EraseEnemyDesign3
	mov cx , [enem1_x + 4]
	mov dx , [enem1_y + 4]
	call Explosion
	mov cx , [enem1_x + 4]
	mov dx , [enem1_y + 4]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem1_x + 6]
	mov dx , [enem1_y + 6]
	mov [var7] , cx
	mov [var8] , dx
	mov [var9] , dx
	mov cx , var5
	mov dx , var6
	
	add [var8] , 15
	sub [var9] , 10
	.if (enemdestruct_4 == 0) 
	.if (dx >= var9 && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_4
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem1_x + 6]
	mov dx , [enem1_y + 6]
	call EraseEnemyDesign4
	mov cx , [enem1_x + 6]
	mov dx , [enem1_y + 6]
	call Explosion
	mov cx , [enem1_x + 6]
	mov dx , [enem1_y + 6]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem2_x]
	mov dx , [enem2_y]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_5 == 0)
	.if (dx >= [enem2_y] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_5
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem2_x]
	mov dx , [enem2_y]
	call EraseEnemyDesign1
	mov cx , [enem2_x]
	mov dx , [enem2_y]
	call Explosion
	mov cx , [enem2_x]
	mov dx , [enem2_y]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem2_x + 2]
	mov dx , [enem2_y + 2]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_6 == 0) 
	.if (dx >= [enem2_y + 2] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_6
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem2_x + 2]
	mov dx , [enem2_y + 2]
	call EraseEnemyDesign2
	mov cx , [enem2_x + 2]
	mov dx , [enem2_y + 2]
	call Explosion
	mov cx , [enem2_x + 2]
	mov dx , [enem2_y + 2]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem2_x + 4]
	mov dx , [enem2_y + 4]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_7 == 0) 
	.if (dx >= [enem2_y + 4] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_7
	inc score
	inc destructcounter
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem2_x + 4]
	mov dx , [enem2_y + 4]
	call EraseEnemyDesign3
	mov cx , [enem2_x + 4]
	mov dx , [enem2_y + 4]
	call Explosion
	mov cx , [enem2_x + 4]
	mov dx , [enem2_y + 4]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem2_x + 6]
	mov dx , [enem2_y + 6]
	mov [var7] , cx
	mov [var8] , dx
	mov [var9] , dx
	mov cx , var5
	mov dx , var6
	
	add [var8] , 15
	sub [var9] , 10
	.if (enemdestruct_8 == 0) 
	.if (dx >= var9 && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_8
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem2_x + 6]
	mov dx , [enem2_y + 6]
	call EraseEnemyDesign4
	mov cx , [enem2_x + 6]
	mov dx , [enem2_y + 6]
	call Explosion
	mov cx , [enem2_x + 6]
	mov dx , [enem2_y + 6]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem3_x]
	mov dx , [enem3_y]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_9 == 0) 
	.if (dx >= [enem3_y] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_9
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem3_x]
	mov dx , [enem3_y]
	call EraseEnemyDesign1
	mov cx , [enem3_x]
	mov dx , [enem3_y]
	call Explosion
	mov cx , [enem3_x]
	mov dx , [enem3_y]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem3_x + 2]
	mov dx , [enem3_y + 2]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_10 == 0) 
	.if (dx >= [enem3_y + 2] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_10
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem3_x + 2]
	mov dx , [enem3_y + 2]
	call EraseEnemyDesign2
	mov cx , [enem3_x + 2]
	mov dx , [enem3_y + 2]
	call Explosion
	mov cx , [enem3_x + 2]
	mov dx , [enem3_y + 2]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem3_x + 4]
	mov dx , [enem3_y + 4]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_11 == 0) 
	.if (dx >= [enem3_y + 4] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_11
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem3_x + 4]
	mov dx , [enem3_y + 4]
	call EraseEnemyDesign3
	mov cx , [enem3_x + 4]
	mov dx , [enem3_y + 4]
	call Explosion
	mov cx , [enem3_x + 4]
	mov dx , [enem3_y + 4]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem3_x + 6]
	mov dx , [enem3_y + 6]
	mov [var7] , cx
	mov [var8] , dx
	mov [var9] , dx
	mov cx , var5
	mov dx , var6
	
	add [var8] , 15
	sub [var9] , 10
	.if (enemdestruct_12 == 0) 
	.if (dx >= [var9] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_12
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem3_x + 6]
	mov dx , [enem3_y + 6]
	call EraseEnemyDesign4
	mov cx , [enem3_x + 6]
	mov dx , [enem3_y + 6]
	call Explosion
	mov cx , [enem3_x + 6]
	mov dx , [enem3_y + 6]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem4_x]
	mov dx , [enem4_y]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_13 == 0) 
	.if (dx >= [enem4_y] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_13
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem4_x]
	mov dx , [enem4_y]
	call EraseEnemyDesign1
	mov cx , [enem4_x]
	mov dx , [enem4_y]
	call Explosion
	mov cx , [enem4_x]
	mov dx , [enem4_y]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem4_x + 2]
	mov dx , [enem4_y + 2]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_14 == 0) 
	.if (dx >= [enem4_y + 2] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_14
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem4_x + 2]
	mov dx , [enem4_y + 2]
	call EraseEnemyDesign2
	mov cx , [enem4_x + 2]
	mov dx , [enem4_y + 2]
	call Explosion
	mov cx , [enem4_x + 2]
	mov dx , [enem4_y + 2]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem4_x + 4]
	mov dx , [enem4_y + 4]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_15 == 0) 
	.if (dx >= [enem4_y + 4] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_15
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem4_x + 4]
	mov dx , [enem4_y + 4]
	call EraseEnemyDesign3
	mov cx , [enem4_x + 4]
	mov dx , [enem4_y + 4]
	call Explosion
	mov cx , [enem4_x + 4]
	mov dx , [enem4_y + 4]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem4_x + 6]
	mov dx , [enem4_y + 6]
	mov [var7] , cx
	mov [var8] , dx
	mov [var9] , dx
	mov cx , var5
	mov dx , var6
	
	add [var8] , 15
	sub [var9] , 10
	.if (enemdestruct_16 == 0) 
	.if (dx >= [var9] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_16
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem4_x + 6]
	mov dx , [enem4_y + 6]
	call EraseEnemyDesign4
	mov cx , [enem4_x + 6]
	mov dx , [enem4_y + 6]
	call Explosion
	mov cx , [enem4_x + 6]
	mov dx , [enem4_y + 6]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem5_x]
	mov dx , [enem5_y]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_17 == 0) 
	.if (dx >= [enem5_y] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_17
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem5_x]
	mov dx , [enem5_y]
	call EraseEnemyDesign1
	mov cx , [enem5_x]
	mov dx , [enem5_y]
	call Explosion
	mov cx , [enem5_x]
	mov dx , [enem5_y]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem5_x + 2]
	mov dx , [enem5_y + 2]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_18 == 0) 
	.if (dx >= [enem5_y + 2] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_18
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem5_x + 2]
	mov dx , [enem5_y + 2]
	call EraseEnemyDesign2
	mov cx , [enem5_x + 2]
	mov dx , [enem5_y + 2]
	call Explosion
	mov cx , [enem5_x + 2]
	mov dx , [enem5_y + 2]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem5_x + 4]
	mov dx , [enem5_y + 4]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (enemdestruct_19 == 0) 
	.if (dx >= [enem5_y + 4] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_19
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem5_x + 4]
	mov dx , [enem5_y + 4]
	call EraseEnemyDesign3
	mov cx , [enem5_x + 4]
	mov dx , [enem5_y + 4]
	call Explosion
	mov cx , [enem5_x + 4]
	mov dx , [enem5_y + 4]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [enem5_x + 6]
	mov dx , [enem5_y + 6]
	mov [var7] , cx
	mov [var8] , dx
	mov [var9] , dx
	mov cx , var5
	mov dx , var6
	
	add [var8] , 15
	sub [var9] , 10
	.if (enemdestruct_20 == 0) 
	.if (dx >= var9 && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc enemdestruct_20
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [enem5_x + 6]
	mov dx , [enem5_y + 6]
	call EraseEnemyDesign4
	mov cx , [enem5_x + 6]
	mov dx , [enem5_y + 6]
	call Explosion
	mov cx , [enem5_x + 6]
	mov dx , [enem5_y + 6]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif 

	.if (level == 3)
	mov var5 , cx
	mov var6 , dx
	mov cx , [monster1_x]
	mov dx , [monster1_y]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (monsterdestruct_1 == 0) 
	.if (dx >= [monster1_y] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc monsterdestruct_1
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [monster1_x]
	mov dx , [monster1_y]
	call EraseEnemyDesign5
	mov cx , [monster1_x]
	mov dx , [monster1_y]
	call Explosion
	mov cx , [monster1_x]
	mov dx , [monster1_y]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif

	mov var5 , cx
	mov var6 , dx
	mov cx , [monster2_x]
	mov dx , [monster2_y]
	mov [var7] , cx
	mov [var8] , dx
	mov cx , var5
	mov dx , var6
	
	sub [var7] , 5
	add [var8] , 10
	.if (monsterdestruct_2 == 0) 
	.if (dx >= [monster2_y] && dx <= [var8])
	.if (cx <= [var7])
	jle FF
	.else
	inc monsterdestruct_2
	inc destructcounter
	inc score
	mov var5 , cx
	mov var6 , dx
	mov cx , [monster2_x]
	mov dx , [monster2_y]
	call EraseEnemyDesign5
	mov cx , [monster2_x]
	mov dx , [monster2_y]
	call Explosion
	mov cx , [monster2_x]
	mov dx , [monster2_y]
	call EraseExplosion
	mov cx , var5
	mov dx , var6
	jmp exitfire
	.endif
	.endif
	.endif
	.endif

	jle FF
	.endif
	cmp cx , 315
	jle FF
exitfire :
		erasefire1 counter
endm 

MonsterFire proc



ret
MonsterFire endp

pattern1 proc 
mov [enem1_x] , 200d
mov [enem1_y] , 20d
mov [enem1_x + 2] , 230d
mov [enem1_y + 2] , 20d
mov [enem1_x + 4] , 260d
mov [enem1_y + 4] , 20d
mov [enem1_x + 6] , 290d
mov [enem1_y + 6] , 20d

mov [enem2_x] , 200d
mov [enem2_y] , 60d
mov [enem2_x + 2] , 230d
mov [enem2_y + 2] , 60d
mov [enem2_x + 4] , 260d
mov [enem2_y + 4] , 60d
mov [enem2_x + 6] , 290d
mov [enem2_y + 6] , 60d

mov [enem3_x] , 200d
mov [enem3_y] , 100d
mov [enem3_x + 2] , 230d
mov [enem3_y + 2] , 100d
mov [enem3_x + 4] , 260d
mov [enem3_y + 4] , 100d
mov [enem3_x + 6] , 290d
mov [enem3_y + 6] , 100d

mov [enem4_x] , 200d
mov [enem4_y] , 140d
mov [enem4_x + 2] , 230d
mov [enem4_y + 2] , 140d
mov [enem4_x + 4] , 260d
mov [enem4_y + 4] , 140d
mov [enem4_x + 6] , 290d
mov [enem4_y + 6] , 140d

mov [enem5_x] , 200d
mov [enem5_y] , 180d
mov [enem5_x + 2] , 230d
mov [enem5_y + 2] , 180d
mov [enem5_x + 4] , 260d
mov [enem5_y + 4] , 180d
mov [enem5_x + 6] , 290d
mov [enem5_y + 6] , 180d

.if(level == 3)
mov [monster1_x] , 160d
mov [monster1_y] , 180d

mov [monster2_x] , 160d
mov [monster2_y] , 20d
.endif

ret
pattern1 endp

pattern2 proc 
mov [enem1_x] , 170d
mov [enem1_y] , 30d
mov [enem1_x + 2] , 190d
mov [enem1_y + 2] , 30d
mov [enem1_x + 4] , 210d
mov [enem1_y + 4] , 30d
mov [enem1_x + 6] , 230d
mov [enem1_y + 6] , 30d

mov [enem2_x] , 170d
mov [enem2_y] , 30d
mov [enem2_x + 2] , 190d
mov [enem2_y + 2] , 50d
mov [enem2_x + 4] , 210d
mov [enem2_y + 4] , 50d
mov [enem2_x + 6] , 230d
mov [enem2_y + 6] , 50d

mov [enem3_x] , 170d
mov [enem3_y] , 70d
mov [enem3_x + 2] , 190d
mov [enem3_y + 2] , 70d  
mov [enem3_x + 4] , 210d
mov [enem3_y + 4] , 70d
mov [enem3_x + 6] , 230d
mov [enem3_y + 6] , 70d

mov [enem4_x] , 170d
mov [enem4_y] , 90d
mov [enem4_x + 2] , 190d
mov [enem4_y + 2] , 90d
mov [enem4_x + 4] , 210d
mov [enem4_y + 4] , 90d
mov [enem4_x + 6] , 230d
mov [enem4_y + 6] , 90d

mov [enem5_x] , 170d
mov [enem5_y] , 110d
mov [enem5_x + 2] , 190d
mov [enem5_y + 2] , 110d
mov [enem5_x + 4] , 210d
mov [enem5_y + 4] , 110d
mov [enem5_x + 6] , 230d
mov [enem5_y + 6] , 110d

.if(level == 3)
mov [monster1_x] , 160d
mov [monster1_y] , 180d

mov [monster2_x] , 160d
mov [monster2_y] , 20d
.endif

ret
pattern2 endp

pattern3 proc 
mov [enem1_x] , 230d
mov [enem1_y] , 40d
mov [enem1_x + 2] , 240d
mov [enem1_y + 2] , 40d
mov [enem1_x + 4] , 250d
mov [enem1_y + 4] , 40d
mov [enem1_x + 6] , 260d
mov [enem1_y + 6] , 40d

mov [enem2_x] , 230d
mov [enem2_y] , 60d
mov [enem2_x + 2] , 240d
mov [enem2_y + 2] , 60d
mov [enem2_x + 4] , 260d
mov [enem2_y + 4] , 60d
mov [enem2_x + 6] , 270d
mov [enem2_y + 6] , 60d

mov [enem3_x] , 230d
mov [enem3_y] , 80d
mov [enem3_x + 2] , 240d
mov [enem3_y + 2] , 80d
mov [enem3_x + 4] , 250d
mov [enem3_y + 4] , 80d
mov [enem3_x + 6] , 260d
mov [enem3_y + 6] , 80d

mov [enem4_x] , 230d
mov [enem4_y] , 100d
mov [enem4_x + 2] , 240d
mov [enem4_y + 2] , 100d
mov [enem4_x + 4] , 250d
mov [enem4_y + 4] , 100d
mov [enem4_x + 6] , 260d
mov [enem4_y + 6] , 100d

mov [enem5_x] , 230d
mov [enem5_y] , 120d
mov [enem5_x + 2] , 240d
mov [enem5_y + 2] , 120d
mov [enem5_x + 4] , 250d
mov [enem5_y + 4] , 120d
mov [enem5_x + 6] , 260d
mov [enem5_y + 6] , 120d

.if(level == 3)
mov [monster1_x] , 160d
mov [monster1_y] , 180d

mov [monster2_x] , 160d
mov [monster2_y] , 20d
.endif

ret
pattern3 endp

pattern4 proc 
mov [enem1_x] , 250d
mov [enem1_y] , 50d
mov [enem1_x + 2] , 260d
mov [enem1_y + 2] , 50d
mov [enem1_x + 4] , 270d
mov [enem1_y + 4] , 50d
mov [enem1_x + 6] , 280d
mov [enem1_y + 6] , 50d

mov [enem2_x] , 250d
mov [enem2_y] , 70d
mov [enem2_x + 2] , 260d
mov [enem2_y + 2] , 70d
mov [enem2_x + 4] , 270d
mov [enem2_y + 4] , 70d
mov [enem2_x + 6] , 280d
mov [enem2_y + 6] , 70d

mov [enem3_x] , 250d
mov [enem3_y] , 90d
mov [enem3_x + 2] , 260d
mov [enem3_y + 2] , 90d
mov [enem3_x + 4] , 270d
mov [enem3_y + 4] , 90d
mov [enem3_x + 6] , 280d
mov [enem3_y + 6] , 90d

mov [enem4_x] , 250d
mov [enem4_y] , 110d
mov [enem4_x + 2] , 260d
mov [enem4_y + 2] , 110d
mov [enem4_x + 4] , 270d
mov [enem4_y + 4] , 110d
mov [enem4_x + 6] , 280d
mov [enem4_y + 6] , 110d

mov [enem5_x] , 250d
mov [enem5_y] , 130d
mov [enem5_x + 2] , 260d
mov [enem5_y + 2] , 130d
mov [enem5_x + 4] , 270d
mov [enem5_y + 4] , 130d
mov [enem5_x + 6] , 280d
mov [enem5_y + 6] , 130d

.if(level == 3)
mov [monster1_x] , 160d
mov [monster1_y] , 180d

mov [monster2_x] , 160d
mov [monster2_y] , 20d
.endif
ret
pattern4 endp


movement1 proc
.if (enemMovement1 == 1)
.if (enemdestruct_1 == 0)
mov cx , [enem1_x]
mov dx , [enem1_y]
call EraseEnemyDesign1
.endif
.if (enemdestruct_5 == 0)
mov cx , [enem2_x]
mov dx , [enem2_y]
call EraseEnemyDesign1
.endif
.if (enemdestruct_9 == 0)
mov cx , [enem3_x]
mov dx , [enem3_y]
call EraseEnemyDesign1
.endif
.if (enemdestruct_13 == 0)
mov cx , [enem4_x]
mov dx , [enem4_y]
call EraseEnemyDesign1
.endif
.if (enemdestruct_17 == 0)
mov cx , [enem5_x]
mov dx , [enem5_y]
call EraseEnemyDesign1
.endif
.if ([enem1_y] >= 10 && enemdestruct_1 == 0)
sub [enem1_y] , 1
.elseif ([enem1_x] >= 10 && enemdestruct_1 == 0)
sub [enem1_x] , 1
.endif
.if ([enem2_y] >= 10 && enemdestruct_5 == 0)
sub [enem2_y] , 1
.elseif ([enem2_x] >= 10 && enemdestruct_5 == 0)
sub [enem2_x] , 1 
.endif
.if ([enem3_y] >= 10 && enemdestruct_9 == 0)
sub [enem3_y] , 1
.elseif ([enem3_x] >= 10 && enemdestruct_9 == 0)
sub [enem3_x] , 1
.endif
.if ([enem4_y] >= 10 && enemdestruct_13 == 0)
sub [enem4_y] , 1
.elseif ([enem4_x] >= 10 && enemdestruct_13 == 0)
sub [enem4_x] , 1
.endif
.if ([enem5_y] >= 10 && enemdestruct_17 == 0)
sub [enem5_y] , 1
.elseif ([enem5_x] >= 10 && enemdestruct_17 == 0)
sub [enem5_x] , 1
.endif
.if (enemdestruct_1 == 0)
mov cx , [enem1_x]
mov dx , [enem1_y]
call EnemyDesign1
.endif
.if (enemdestruct_5 == 0)
mov cx , [enem2_x]
mov dx , [enem2_y]
call EnemyDesign1
.endif
.if (enemdestruct_9 == 0)
mov cx , [enem3_x]
mov dx , [enem3_y]
call EnemyDesign1
.endif
.if (enemdestruct_13 == 0)
mov cx , [enem4_x]
mov dx , [enem4_y]
call EnemyDesign1
.endif
.if (enemdestruct_17 == 0)
mov cx , [enem5_x]
mov dx , [enem5_y]
call EnemyDesign1
.endif
.endif

.if (enemMovement2 == 1)
.if (enemdestruct_2 == 0)
mov cx , [enem1_x + 2]
mov dx , [enem1_y + 2]
call EraseEnemyDesign2
.endif
.if (enemdestruct_6 == 0)
mov cx , [enem2_x + 2]
mov dx , [enem2_y + 2]
call EraseEnemyDesign2
.endif
.if (enemdestruct_10 == 0)
mov cx , [enem3_x + 2]
mov dx , [enem3_y + 2]
call EraseEnemyDesign2
.endif
.if (enemdestruct_14 == 0)
mov cx , [enem4_x + 2]
mov dx , [enem4_y + 2]
call EraseEnemyDesign2
.endif
.if (enemdestruct_18 == 0)
mov cx , [enem5_x + 2]
mov dx , [enem5_y + 2]
call EraseEnemyDesign2
.endif
.if ([enem1_y + 2] >= 10 && enemdestruct_2 == 0)
sub [enem1_y + 2] , 1
.elseif ([enem1_x + 2] >= 10 && enemdestruct_2 == 0)
sub [enem1_x + 2] , 1
.endif
.if ([enem2_y + 2] >= 10 && enemdestruct_6 == 0)
sub [enem2_y + 2] , 1
.elseif ([enem2_x + 2] >= 10 && enemdestruct_6 == 0)
sub [enem2_x + 2] , 1 
.endif
.if ([enem3_y + 2] >= 10 && enemdestruct_10 == 0)
sub [enem3_y + 2] , 1
.elseif ([enem3_x + 2] >= 10 && enemdestruct_10 == 0)
sub [enem3_x + 2] , 1
.endif
.if ([enem4_y + 2] >= 10 && enemdestruct_14 == 0)
sub [enem4_y + 2] , 1
.elseif ([enem4_x + 2] >= 10 && enemdestruct_14 == 0)
sub [enem4_x + 2] , 1
.endif
.if ([enem5_y + 2] >= 10 && enemdestruct_18 == 0)
sub [enem5_y + 2] , 1
.elseif ([enem5_x + 2] >= 10 && enemdestruct_18 == 0)
sub [enem5_x + 2] , 1
.endif
.if (enemdestruct_2 == 0)
mov cx , [enem1_x + 2]
mov dx , [enem1_y + 2]
call EnemyDesign2
.endif
.if (enemdestruct_6 == 0)
mov cx , [enem2_x + 2]
mov dx , [enem2_y + 2]
call EnemyDesign2
.endif
.if (enemdestruct_10 == 0)
mov cx , [enem3_x + 2]
mov dx , [enem3_y + 2]
call EnemyDesign2
.endif
.if (enemdestruct_14 == 0)
mov cx , [enem4_x + 2]
mov dx , [enem4_y + 2]
call EnemyDesign2
.endif
.if (enemdestruct_18 == 0)
mov cx , [enem5_x + 2]
mov dx , [enem5_y + 2]
call EnemyDesign2
.endif
.endif

.if (enemMovement3 == 1)
.if (enemdestruct_3 == 0)
mov cx , [enem1_x + 4]
mov dx , [enem1_y + 4]
call EraseEnemyDesign3
.endif
.if (enemdestruct_7 == 0)
mov cx , [enem2_x + 4]
mov dx , [enem2_y + 4]
call EraseEnemyDesign3
.endif
.if (enemdestruct_11 == 0)
mov cx , [enem3_x + 4]
mov dx , [enem3_y + 4]
call EraseEnemyDesign3
.endif
.if (enemdestruct_15 == 0)
mov cx , [enem4_x + 4]
mov dx , [enem4_y + 4]
call EraseEnemyDesign3
.endif
.if (enemdestruct_19 == 0)
mov cx , [enem5_x + 4]
mov dx , [enem5_y + 4]
call EraseEnemyDesign3
.endif
.if ([enem1_y + 4] >= 10 && enemdestruct_3 == 0)
sub [enem1_y + 4] , 1
.elseif ([enem1_x + 4] >= 10 && enemdestruct_3 == 0)
sub [enem1_x + 4] , 1
.endif
.if ([enem2_y + 4] >= 10 && enemdestruct_7 == 0)
sub [enem2_y + 4] , 1
.elseif ([enem2_x + 4] >= 10 && enemdestruct_7 == 0)
sub [enem2_x + 4] , 1 
.endif
.if ([enem3_y + 4] >= 10 && enemdestruct_11 == 0)
sub [enem3_y + 4] , 1
.elseif ([enem3_x + 4] >= 10 && enemdestruct_11 == 0)
sub [enem3_x + 4] , 1
.endif
.if ([enem4_y + 4] >= 10 && enemdestruct_15 == 0)
sub [enem4_y + 4] , 1
.elseif ([enem4_x + 4] >= 10 && enemdestruct_15 == 0)
sub [enem4_x + 4] , 1
.endif
.if ([enem5_y + 4] >= 10 && enemdestruct_19 == 0)
sub [enem5_y + 4] , 1
.elseif ([enem5_x + 4] >= 10 && enemdestruct_19 == 0)
sub [enem5_x + 4] , 1
.endif
.if (enemdestruct_3 == 0)
mov cx , [enem1_x + 4]
mov dx , [enem1_y + 4]
call EnemyDesign3
.endif
.if (enemdestruct_7 == 0)
mov cx , [enem2_x + 4]
mov dx , [enem2_y + 4]
call EnemyDesign3
.endif
.if (enemdestruct_11 == 0)
mov cx , [enem3_x + 4]
mov dx , [enem3_y + 4]
call EnemyDesign3
.endif
.if (enemdestruct_15 == 0)
mov cx , [enem4_x + 4]
mov dx , [enem4_y + 4]
call EnemyDesign3
.endif
.if (enemdestruct_19 == 0)
mov cx , [enem5_x + 4]
mov dx , [enem5_y + 4]
call EnemyDesign3
.endif
.endif

.if (enemMovement4 == 1)
.if (enemdestruct_4 == 0)
mov cx , [enem1_x + 6]
mov dx , [enem1_y + 6]
call EraseEnemyDesign4
.endif
.if (enemdestruct_8 == 0)
mov cx , [enem2_x + 6]
mov dx , [enem2_y + 6]
call EraseEnemyDesign4
.endif
.if (enemdestruct_12 == 0)
mov cx , [enem3_x + 6]
mov dx , [enem3_y + 6]
call EraseEnemyDesign4
.endif
.if (enemdestruct_16 == 0)
mov cx , [enem4_x + 6]
mov dx , [enem4_y + 6]
call EraseEnemyDesign4
.endif
.if (enemdestruct_20 == 0)
mov cx , [enem5_x + 6]
mov dx , [enem5_y + 6]
call EraseEnemyDesign4
.endif
.if ([enem1_y + 6] >= 10 && enemdestruct_4 == 0)
sub [enem1_y + 6] , 1
.elseif ([enem1_x + 6] >= 10 && enemdestruct_4 == 0)
sub [enem1_x + 6] , 1
.endif
.if ([enem2_y + 6] >= 10 && enemdestruct_8 == 0)
sub [enem2_y + 6] , 1
.elseif ([enem2_x + 6] >= 10 && enemdestruct_8 == 0)
sub [enem2_x + 6] , 1 
.endif
.if ([enem3_y + 6] >= 10 && enemdestruct_12 == 0)
sub [enem3_y + 6] , 1
.elseif ([enem3_x + 6] >= 10 && enemdestruct_12 == 0)
sub [enem3_x + 6] , 1
.endif
.if ([enem4_y + 6] >= 10 && enemdestruct_16 == 0)
sub [enem4_y + 6] , 1
.elseif ([enem4_x + 6] >= 10 && enemdestruct_16 == 0)
sub [enem4_x + 6] , 1
.endif
.if ([enem5_y + 6] >= 10 && enemdestruct_20 == 0)
sub [enem5_y + 6] , 1
.elseif ([enem5_x + 6] >= 10 && enemdestruct_20 == 0)
sub [enem5_x + 6] , 1
.endif
.if (enemdestruct_4 == 0)
mov cx , [enem1_x + 6]
mov dx , [enem1_y + 6]
call EnemyDesign4
.endif
.if (enemdestruct_8 == 0)
mov cx , [enem2_x + 6]
mov dx , [enem2_y + 6]
call EnemyDesign4
.endif
.if (enemdestruct_12 == 0)
mov cx , [enem3_x + 6]
mov dx , [enem3_y + 6]
call EnemyDesign4
.endif
.if (enemdestruct_16 == 0)
mov cx , [enem4_x + 6]
mov dx , [enem4_y + 6]
call EnemyDesign4
.endif
.if (enemdestruct_20 == 0)
mov cx , [enem5_x + 6]
mov dx , [enem5_y + 6]
call EnemyDesign4
.endif
.endif
ret
movement1 endp

movement2 proc
.if (enemMovement1 == 2)
.if (enemdestruct_1 == 0)
mov cx , [enem1_x]
mov dx , [enem1_y]
call EraseEnemyDesign1
.endif
.if (enemdestruct_5 == 0)
mov cx , [enem2_x]
mov dx , [enem2_y]
call EraseEnemyDesign1
.endif
.if (enemdestruct_9 == 0)
mov cx , [enem3_x]
mov dx , [enem3_y]
call EraseEnemyDesign1
.endif
.if (enemdestruct_13 == 0)
mov cx , [enem4_x]
mov dx , [enem4_y]
call EraseEnemyDesign1
.endif
.if (enemdestruct_17 == 0)
mov cx , [enem5_x]
mov dx , [enem5_y]
call EraseEnemyDesign1
.endif
.if ([enem1_y] <= 185 && enemdestruct_1 == 0)
add [enem1_y] , 1
.elseif ([enem1_x] >= 10 && enemdestruct_1 == 0)
sub [enem1_x] , 1
.endif
.if ([enem2_y] <= 185 && enemdestruct_5 == 0)
add [enem2_y] , 1
.elseif ([enem2_x] >= 10 && enemdestruct_5 == 0)
sub [enem2_x] , 1 
.endif
.if ([enem3_y] <= 185 && enemdestruct_9 == 0)
add [enem3_y] , 1
.elseif ([enem3_x] >= 10 && enemdestruct_9 == 0)
sub [enem3_x] , 1
.endif
.if ([enem4_y] <= 185 && enemdestruct_13 == 0)
add [enem4_y] , 1
.elseif ([enem4_x] >= 10 && enemdestruct_13 == 0)
sub [enem4_x] , 1
.endif
.if ([enem5_y] <= 185 && enemdestruct_17 == 0)
add [enem5_y] , 1
.elseif ([enem5_x] >= 10 && enemdestruct_17 == 0)
sub [enem5_x] , 1
.endif
.if (enemdestruct_1 == 0)
mov cx , [enem1_x]
mov dx , [enem1_y]
call EnemyDesign1
.endif
.if (enemdestruct_5 == 0)
mov cx , [enem2_x]
mov dx , [enem2_y]
call EnemyDesign1
.endif
.if (enemdestruct_9 == 0)
mov cx , [enem3_x]
mov dx , [enem3_y]
call EnemyDesign1
.endif
.if (enemdestruct_13 == 0)
mov cx , [enem4_x]
mov dx , [enem4_y]
call EnemyDesign1
.endif
.if (enemdestruct_17 == 0)
mov cx , [enem5_x]
mov dx , [enem5_y]
call EnemyDesign1
.endif
.endif

.if (enemMovement2 == 2)
.if (enemdestruct_2 == 0)
mov cx , [enem1_x + 2]
mov dx , [enem1_y + 2]
call EraseEnemyDesign2
.endif
.if (enemdestruct_6 == 0)
mov cx , [enem2_x + 2]
mov dx , [enem2_y + 2]
call EraseEnemyDesign2
.endif
.if (enemdestruct_10 == 0)
mov cx , [enem3_x + 2]
mov dx , [enem3_y + 2]
call EraseEnemyDesign2
.endif
.if (enemdestruct_14 == 0)
mov cx , [enem4_x + 2]
mov dx , [enem4_y + 2]
call EraseEnemyDesign2
.endif
.if (enemdestruct_18 == 0)
mov cx , [enem5_x + 2]
mov dx , [enem5_y + 2]
call EraseEnemyDesign2
.endif
.if ([enem1_y + 2] <= 185 && enemdestruct_2 == 0)
add [enem1_y + 2] , 1
.elseif ([enem1_x + 2] >= 10 && enemdestruct_2 == 0)
sub [enem1_x + 2] , 1
.endif
.if ([enem2_y + 2] <= 185 && enemdestruct_6 == 0)
add [enem2_y + 2] , 1
.elseif ([enem2_x + 2] >= 10 && enemdestruct_6 == 0)
sub [enem2_x + 2] , 1 
.endif
.if ([enem3_y + 2] <= 185 && enemdestruct_10 == 0)
add [enem3_y + 2] , 1
.elseif ([enem3_x + 2] >= 10 && enemdestruct_10 == 0)
sub [enem3_x + 2] , 1
.endif
.if ([enem4_y + 2] <= 185 && enemdestruct_14 == 0)
add [enem4_y + 2] , 1
.elseif ([enem4_x + 2] >= 10 && enemdestruct_14 == 0)
sub [enem4_x + 2] , 1
.endif
.if ([enem5_y + 2] <= 185 && enemdestruct_18 == 0)
add [enem5_y + 2] , 1
.elseif ([enem5_x + 2] >= 10 && enemdestruct_18 == 0)
sub [enem5_x + 2] , 1
.endif
.if (enemdestruct_2 == 0)
mov cx , [enem1_x + 2]
mov dx , [enem1_y + 2]
call EnemyDesign2
.endif
.if (enemdestruct_6 == 0)
mov cx , [enem2_x + 2]
mov dx , [enem2_y + 2]
call EnemyDesign2
.endif
.if (enemdestruct_10 == 0)
mov cx , [enem3_x + 2]
mov dx , [enem3_y + 2]
call EnemyDesign2
.endif
.if (enemdestruct_14 == 0)
mov cx , [enem4_x + 2]
mov dx , [enem4_y + 2]
call EnemyDesign2
.endif
.if (enemdestruct_18 == 0)
mov cx , [enem5_x + 2]
mov dx , [enem5_y + 2]
call EnemyDesign2
.endif
.endif

.if (enemMovement3 == 2)
.if (enemdestruct_3 == 0)
mov cx , [enem1_x + 4]
mov dx , [enem1_y + 4]
call EraseEnemyDesign3
.endif
.if (enemdestruct_7 == 0)
mov cx , [enem2_x + 4]
mov dx , [enem2_y + 4]
call EraseEnemyDesign3
.endif
.if (enemdestruct_11 == 0)
mov cx , [enem3_x + 4]
mov dx , [enem3_y + 4]
call EraseEnemyDesign3
.endif
.if (enemdestruct_15 == 0)
mov cx , [enem4_x + 4]
mov dx , [enem4_y + 4]
call EraseEnemyDesign3
.endif
.if (enemdestruct_19 == 0)
mov cx , [enem5_x + 4]
mov dx , [enem5_y + 4]
call EraseEnemyDesign3
.endif
.if ([enem1_y + 4] <= 185 && enemdestruct_3 == 0)
add [enem1_y + 4] , 1
.elseif ([enem1_x + 4] >= 10 && enemdestruct_3 == 0)
sub [enem1_x + 4] , 1
.endif
.if ([enem2_y + 4] <= 185 && enemdestruct_7 == 0)
add [enem2_y + 4] , 1
.elseif ([enem2_x + 4] >= 10 && enemdestruct_7 == 0)
sub [enem2_x + 4] , 1 
.endif
.if ([enem3_y + 4] <= 185 && enemdestruct_11 == 0)
add [enem3_y + 4] , 1
.elseif ([enem3_x + 4] >= 10 && enemdestruct_11 == 0)
sub [enem3_x + 4] , 1
.endif
.if ([enem4_y + 4] <= 185 && enemdestruct_15 == 0)
add [enem4_y + 4] , 1
.elseif ([enem4_x + 4] >= 10 && enemdestruct_15 == 0)
sub [enem4_x + 4] , 1
.endif
.if ([enem5_y + 4] <= 185 && enemdestruct_19 == 0)
add [enem5_y + 4] , 1
.elseif ([enem5_x + 4] >= 10 && enemdestruct_19 == 0)
sub [enem5_x + 4] , 1
.endif
.if (enemdestruct_3 == 0)
mov cx , [enem1_x + 4]
mov dx , [enem1_y + 4]
call EnemyDesign3
.endif
.if (enemdestruct_7 == 0)
mov cx , [enem2_x + 4]
mov dx , [enem2_y + 4]
call EnemyDesign3
.endif
.if (enemdestruct_11 == 0)
mov cx , [enem3_x + 4]
mov dx , [enem3_y + 4]
call EnemyDesign3
.endif
.if (enemdestruct_15 == 0)
mov cx , [enem4_x + 4]
mov dx , [enem4_y + 4]
call EnemyDesign3
.endif
.if (enemdestruct_19 == 0)
mov cx , [enem5_x + 4]
mov dx , [enem5_y + 4]
call EnemyDesign3
.endif
.endif

.if (enemMovement4 == 2)
.if (enemdestruct_4 == 0)
mov cx , [enem1_x + 6]
mov dx , [enem1_y + 6]
call EraseEnemyDesign4
.endif
.if (enemdestruct_8 == 0)
mov cx , [enem2_x + 6]
mov dx , [enem2_y + 6]
call EraseEnemyDesign4
.endif
.if (enemdestruct_12 == 0)
mov cx , [enem3_x + 6]
mov dx , [enem3_y + 6]
call EraseEnemyDesign4
.endif
.if (enemdestruct_16 == 0)
mov cx , [enem4_x + 6]
mov dx , [enem4_y + 6]
call EraseEnemyDesign4
.endif
.if (enemdestruct_20 == 0)
mov cx , [enem5_x + 6]
mov dx , [enem5_y + 6]
call EraseEnemyDesign4
.endif
.if ([enem1_y + 6] <= 185 && enemdestruct_4 == 0)
add [enem1_y + 6] , 1
.elseif ([enem1_x + 6] >= 10 && enemdestruct_4 == 0)
sub [enem1_x + 6] , 1
.endif
.if ([enem2_y + 6] <= 185 && enemdestruct_8 == 0)
add [enem2_y + 6] , 1
.elseif ([enem2_x + 6] >= 10 && enemdestruct_8 == 0)
sub [enem2_x + 6] , 1 
.endif
.if ([enem3_y + 6] <= 185 && enemdestruct_12 == 0)
add [enem3_y + 6] , 1
.elseif ([enem3_x + 6] >= 10 && enemdestruct_12 == 0)
sub [enem3_x + 6] , 1
.endif
.if ([enem4_y + 6] <= 185 && enemdestruct_16 == 0)
add [enem4_y + 6] , 1
.elseif ([enem4_x + 6] >= 10 && enemdestruct_16 == 0)
sub [enem4_x + 6] , 1
.endif
.if ([enem5_y + 6] <= 185 && enemdestruct_20 == 0)
add [enem5_y + 6] , 1
.elseif ([enem5_x + 6] >= 10 && enemdestruct_20 == 0)
sub [enem5_x + 6] , 1
.endif
.if (enemdestruct_4 == 0)
mov cx , [enem1_x + 6]
mov dx , [enem1_y + 6]
call EnemyDesign4
.endif
.if (enemdestruct_8 == 0)
mov cx , [enem2_x + 6]
mov dx , [enem2_y + 6]
call EnemyDesign4
.endif
.if (enemdestruct_12 == 0)
mov cx , [enem3_x + 6]
mov dx , [enem3_y + 6]
call EnemyDesign4
.endif
.if (enemdestruct_16 == 0)
mov cx , [enem4_x + 6]
mov dx , [enem4_y + 6]
call EnemyDesign4
.endif
.if (enemdestruct_20 == 0)
mov cx , [enem5_x + 6]
mov dx , [enem5_y + 6]
call EnemyDesign4
.endif
.endif
ret
movement2 endp

movement3 proc
.if (enemMovement1 == 3)

.if (enemdestruct_1 == 0)
mov cx , [enem1_x]
mov dx , [enem1_y]
call EraseEnemyDesign1
.if ([enem1_y] <= 185 && [enem1_x] >= 10 && changeDirection1 == 0)
add [enem1_y] , 1
sub [enem1_x] , 1
.elseif ([enem1_y] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem1_y] >= 10 && [enem1_x] >= 10 && changeDirection1 == 1)
sub [enem1_y] , 1
sub [enem1_x] , 1
.elseif ([enem1_y] < 10 && [enem1_x] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem1_x]
mov dx , [enem1_y]
call EnemyDesign1
.endif

.if (enemdestruct_5 == 0)
mov cx , [enem2_x]
mov dx , [enem2_y]
call EraseEnemyDesign1
.if ([enem2_y] <= 185 && [enem2_x] >= 10 && changeDirection1 == 0)
add [enem2_y] , 1
sub [enem2_x] , 1
.elseif ([enem2_y] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem2_y] >= 10 && [enem2_x] >= 10 && changeDirection1 == 1)
sub [enem2_y] , 1
sub [enem2_x] , 1
.elseif ([enem2_y] < 10 && [enem2_x] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem2_x]
mov dx , [enem2_y]
call EnemyDesign1
.endif

.if (enemdestruct_9 == 0)
mov cx , [enem3_x]
mov dx , [enem3_y]
call EraseEnemyDesign1
.if ([enem3_y] <= 185 && [enem3_x] >= 10 && changeDirection1 == 0)
add [enem3_y] , 1
sub [enem3_x] , 1
.elseif ([enem3_y] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem3_y] >= 10 && [enem3_x] >= 10 && changeDirection1 == 1)
sub [enem3_y] , 1
sub [enem3_x] , 1
.elseif ([enem3_y] < 10 && [enem3_x] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem3_x]
mov dx , [enem3_y]
call EnemyDesign1
.endif

.if (enemdestruct_13 == 0)
mov cx , [enem4_x]
mov dx , [enem4_y]
call EraseEnemyDesign1
.if ([enem4_y] <= 185 && [enem4_x] >= 10 && changeDirection1 == 0)
add [enem4_y] , 1
sub [enem4_x] , 1
.elseif ([enem4_y] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem4_y] >= 10 && [enem4_x] >= 10 && changeDirection1 == 1)
sub [enem4_y] , 1
sub [enem4_x] , 1
.elseif ([enem4_y] < 10 && [enem4_x] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem4_x]
mov dx , [enem4_y]
call EnemyDesign1
.endif

.if (enemdestruct_17 == 0)
mov cx , [enem5_x]
mov dx , [enem5_y]
call EraseEnemyDesign1
.if ([enem5_y] <= 185 && [enem5_x] >= 10 && changeDirection1 == 0)
add [enem5_y] , 1
sub [enem5_x] , 1
.elseif ([enem5_y] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem5_y] >= 10 && [enem5_x] >= 10 && changeDirection1 == 1)
sub [enem5_y] , 1
sub [enem5_x] , 1
.elseif ([enem5_y] < 10 && [enem5_x] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem5_x]
mov dx , [enem5_y]
call EnemyDesign1
.endif

.endif

.if (enemMovement2 == 3)

.if (enemdestruct_2 == 0)
mov cx , [enem1_x + 2]
mov dx , [enem1_y + 2]
call EraseEnemyDesign2
.if ([enem1_y + 2] <= 185 && [enem1_x + 2] >= 10 && changeDirection1 == 0)
add [enem1_y + 2] , 1
sub [enem1_x + 2] , 1
.elseif ([enem1_y + 2] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem1_y + 2] >= 10 && [enem1_x + 2] >= 10 && changeDirection1 == 1)
sub [enem1_y + 2] , 1
sub [enem1_x + 2] , 1
.elseif ([enem1_y + 2] < 10 && [enem1_x + 2] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem1_x + 2]
mov dx , [enem1_y + 2]
call EnemyDesign2
.endif

.if (enemdestruct_6 == 0)
mov cx , [enem2_x + 2]
mov dx , [enem2_y + 2]
call EraseEnemyDesign2
.if ([enem2_y + 2] <= 185 && [enem2_x + 2] >= 10 && changeDirection1 == 0)
add [enem2_y + 2] , 1
sub [enem2_x + 2] , 1
.elseif ([enem2_y + 2] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem2_y + 2] >= 10 && [enem2_x + 2] >= 10 && changeDirection1 == 1)
sub [enem2_y  + 2] , 1
sub [enem2_x + 2] , 1
.elseif ([enem2_y + 2] < 10 && [enem2_x + 2] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem2_x + 2]
mov dx , [enem2_y + 2]
call EnemyDesign2
.endif

.if (enemdestruct_10 == 0)
mov cx , [enem3_x + 2]
mov dx , [enem3_y + 2]
call EraseEnemyDesign2
.if ([enem3_y + 2] <= 185 && [enem3_x + 2] >= 10 && changeDirection1 == 0)
add [enem3_y + 2] , 1
sub [enem3_x + 2] , 1
.elseif ([enem3_y + 2] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem3_y + 2] >= 10 && [enem3_x + 2] >= 10 && changeDirection1 == 1)
sub [enem3_y + 2] , 1
sub [enem3_x + 2] , 1
.elseif ([enem3_y + 2] < 10 && [enem3_x + 2] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem3_x + 2]
mov dx , [enem3_y + 2]
call EnemyDesign2
.endif

.if (enemdestruct_14 == 0)
mov cx , [enem4_x + 2]
mov dx , [enem4_y + 2]
call EraseEnemyDesign2
.if ([enem4_y + 2] <= 185 && [enem4_x + 2] >= 10 && changeDirection1 == 0)
add [enem4_y + 2] , 1
sub [enem4_x + 2] , 1
.elseif ([enem4_y + 2] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem4_y + 2] >= 10 && [enem4_x + 2] >= 10 && changeDirection1 == 1)
sub [enem4_y + 2] , 1
sub [enem4_x + 2] , 1
.elseif ([enem4_y + 2] < 10 && [enem4_x + 2] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem4_x + 2]
mov dx , [enem4_y + 2]
call EnemyDesign2
.endif

.if (enemdestruct_18 == 0)
mov cx , [enem5_x + 2]
mov dx , [enem5_y + 2]
call EraseEnemyDesign2
.if ([enem5_y + 2] <= 185 && [enem5_x + 2] >= 10 && changeDirection1 == 0)
add [enem5_y + 2] , 1
sub [enem5_x + 2] , 1
.elseif ([enem5_y + 2] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem5_y + 2] >= 10 && [enem5_x + 2] >= 10 && changeDirection1 == 1)
sub [enem5_y + 2] , 1
sub [enem5_x + 2] , 1
.elseif ([enem5_y + 2] < 10 && [enem5_x + 2] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem5_x + 2]
mov dx , [enem5_y + 2]
call EnemyDesign2
.endif

.endif

.if (enemMovement3 == 3)

.if (enemdestruct_3 == 0)
mov cx , [enem1_x + 4]
mov dx , [enem1_y + 4]
call EraseEnemyDesign3
.if ([enem1_y + 4] <= 185 && [enem1_x + 4] >= 10 && changeDirection1 == 0)
add [enem1_y + 4] , 1
sub [enem1_x + 4] , 1
.elseif ([enem1_y + 4] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem1_y + 4] >= 10 && [enem1_x + 4] >= 10 && changeDirection1 == 1)
sub [enem1_y + 4] , 1
sub [enem1_x + 4] , 1
.elseif ([enem1_y + 4] < 10 && [enem1_x + 4] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem1_x + 4]
mov dx , [enem1_y + 4]
call EnemyDesign3
.endif

.if (enemdestruct_7 == 0)
mov cx , [enem2_x + 4]
mov dx , [enem2_y + 4]
call EraseEnemyDesign3
.if ([enem2_y + 4] <= 185 && [enem2_x + 4] >= 10 && changeDirection1 == 0)
add [enem2_y + 4] , 1
sub [enem2_x + 4] , 1
.elseif ([enem2_y + 4] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem2_y + 4] >= 10 && [enem2_x + 4] >= 10 && changeDirection1 == 1)
sub [enem2_y  + 4] , 1
sub [enem2_x + 4] , 1
.elseif ([enem2_y + 4] < 10 && [enem2_x + 4] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem2_x + 4]
mov dx , [enem2_y + 4]
call EnemyDesign3
.endif

.if (enemdestruct_11 == 0)
mov cx , [enem3_x + 4]
mov dx , [enem3_y + 4]
call EraseEnemyDesign3
.if ([enem3_y + 4] <= 185 && [enem3_x + 4] >= 10 && changeDirection1 == 0)
add [enem3_y + 4] , 1
sub [enem3_x + 4] , 1
.elseif ([enem3_y + 4] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem3_y + 4] >= 10 && [enem3_x + 4] >= 10 && changeDirection1 == 1)
sub [enem3_y + 4] , 1
sub [enem3_x + 4] , 1
.elseif ([enem3_y + 4] < 10 && [enem3_x + 4] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem3_x + 4]
mov dx , [enem3_y + 4]
call EnemyDesign3
.endif

.if (enemdestruct_15 == 0)
mov cx , [enem4_x + 4]
mov dx , [enem4_y + 4]
call EraseEnemyDesign3
.if ([enem4_y + 4] <= 185 && [enem4_x + 4] >= 10 && changeDirection1 == 0)
add [enem4_y + 4] , 1
sub [enem4_x + 4] , 1
.elseif ([enem4_y + 4] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem4_y + 4] >= 10 && [enem4_x + 4] >= 10 && changeDirection1 == 1)
sub [enem4_y + 4] , 1
sub [enem4_x + 4] , 1
.elseif ([enem4_y + 4] < 10 && [enem4_x + 4] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem4_x + 4]
mov dx , [enem4_y + 4]
call EnemyDesign3
.endif

.if (enemdestruct_19 == 0)
mov cx , [enem5_x + 4]
mov dx , [enem5_y + 4]
call EraseEnemyDesign3
.if ([enem5_y + 4] <= 185 && [enem5_x + 4] >= 10 && changeDirection1 == 0)
add [enem5_y + 4] , 1
sub [enem5_x + 4] , 1
.elseif ([enem5_y + 4] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem5_y + 4] >= 10 && [enem5_x + 4] >= 10 && changeDirection1 == 1)
sub [enem5_y + 4] , 1
sub [enem5_x + 4] , 1
.elseif ([enem5_y + 4] < 10 && [enem5_x + 4] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem5_x + 4]
mov dx , [enem5_y + 4]
call EnemyDesign3
.endif

.endif

.if (enemMovement4 == 3)

.if (enemdestruct_4 == 0)
mov cx , [enem1_x + 6]
mov dx , [enem1_y + 6]
call EraseEnemyDesign4
.if ([enem1_y + 6] <= 185 && [enem1_x + 6] >= 10 && changeDirection1 == 0)
add [enem1_y + 6] , 1
sub [enem1_x + 6] , 1
.elseif ([enem1_y + 6] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem1_y + 6] >= 10 && [enem1_x + 6] >= 10 && changeDirection1 == 1)
sub [enem1_y + 6] , 1
sub [enem1_x + 6] , 1
.elseif ([enem1_y + 6] < 10 && [enem1_x + 6] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem1_x + 6]
mov dx , [enem1_y + 6]
call EnemyDesign4
.endif

.if (enemdestruct_8 == 0)
mov cx , [enem2_x + 6]
mov dx , [enem2_y + 6]
call EraseEnemyDesign4
.if ([enem2_y + 6] <= 185 && [enem2_x + 6] >= 10 && changeDirection1 == 0)
add [enem2_y + 6] , 1
sub [enem2_x + 6] , 1
.elseif ([enem2_y + 6] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem2_y + 6] >= 10 && [enem2_x + 6] >= 10 && changeDirection1 == 1)
sub [enem2_y  + 6] , 1
sub [enem2_x + 6] , 1
.elseif ([enem2_y + 6] < 10 && [enem2_x + 6] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem2_x + 6]
mov dx , [enem2_y + 6]
call EnemyDesign4
.endif

.if (enemdestruct_12 == 0)
mov cx , [enem3_x + 6]
mov dx , [enem3_y + 6]
call EraseEnemyDesign4
.if ([enem3_y + 6] <= 185 && [enem3_x + 6] >= 10 && changeDirection1 == 0)
add [enem3_y + 6] , 1
sub [enem3_x + 6] , 1
.elseif ([enem3_y + 6] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem3_y + 6] >= 10 && [enem3_x + 6] >= 10 && changeDirection1 == 1)
sub [enem3_y + 6] , 1
sub [enem3_x + 6] , 1
.elseif ([enem3_y + 6] < 10 && [enem3_x + 6] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem3_x + 6]
mov dx , [enem3_y + 6]
call EnemyDesign4
.endif

.if (enemdestruct_16 == 0)
mov cx , [enem4_x + 6]
mov dx , [enem4_y + 6]
call EraseEnemyDesign4
.if ([enem4_y + 6] <= 185 && [enem4_x + 6] >= 10 && changeDirection1 == 0)
add [enem4_y + 6] , 1
sub [enem4_x + 6] , 1
.elseif ([enem4_y + 6] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem4_y + 6] >= 10 && [enem4_x + 6] >= 10 && changeDirection1 == 1)
sub [enem4_y + 6] , 1
sub [enem4_x + 6] , 1
.elseif ([enem4_y + 6] < 10 && [enem4_x + 6] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem4_x + 6]
mov dx , [enem4_y + 6]
call EnemyDesign4
.endif

.if (enemdestruct_20 == 0)
mov cx , [enem5_x + 6]
mov dx , [enem5_y + 6]
call EraseEnemyDesign4
.if ([enem5_y + 6] <= 185 && [enem5_x + 6] >= 10 && changeDirection1 == 0)
add [enem5_y + 6] , 1
sub [enem5_x + 6] , 1
.elseif ([enem5_y + 6] > 185 && changeDirection1 == 0)
mov changeDirection1 , 1
.elseif ([enem5_y + 6] >= 10 && [enem5_x + 6] >= 10 && changeDirection1 == 1)
sub [enem5_y + 6] , 1
sub [enem5_x + 6] , 1
.elseif ([enem5_y + 6] < 10 && [enem5_x + 6] >= 10 && changeDirection1 == 1)
mov changeDirection1 , 0
.endif
mov cx , [enem5_x + 6]
mov dx , [enem5_y + 6]
call EnemyDesign4
.endif

.endif

ret
movement3 endp

movement4 proc
.if (enemMovement1 == 4)

.if (enemdestruct_1 == 0)
mov cx , [enem1_x]
mov dx , [enem1_y]
call EraseEnemyDesign1
.if ([enem1_y] >= 10 && [enem1_x] >= 10 && changeDirection2 == 0)
sub [enem1_y] , 1
sub [enem1_x] , 1
.elseif ([enem1_y] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem1_y] <= 185 && [enem1_x] >= 10 && changeDirection2 == 1)
add [enem1_y] , 1
sub [enem1_x] , 1
.elseif ([enem1_y] > 185 && [enem1_x] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem1_x]
mov dx , [enem1_y]
call EnemyDesign1
.endif

.if (enemdestruct_5 == 0)
mov cx , [enem2_x]
mov dx , [enem2_y]
call EraseEnemyDesign1
.if ([enem2_y] >= 10 && [enem2_x] >= 10 && changeDirection2 == 0)
sub [enem2_y] , 1
sub [enem2_x] , 1
.elseif ([enem2_y] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem2_y] <= 185 && [enem2_x] >= 10 && changeDirection2 == 1)
add [enem2_y] , 1
sub [enem2_x] , 1
.elseif ([enem2_y] > 185 && [enem2_x] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem2_x]
mov dx , [enem2_y]
call EnemyDesign1
.endif

.if (enemdestruct_9 == 0)
mov cx , [enem3_x]
mov dx , [enem3_y]
call EraseEnemyDesign1
.if ([enem3_y] >= 10 && [enem3_x] >= 10 && changeDirection2 == 0)
sub [enem3_y] , 1
sub [enem3_x] , 1
.elseif ([enem3_y] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem3_y] <= 185 && [enem3_x] >= 10 && changeDirection2 == 1)
add [enem3_y] , 1
sub [enem3_x] , 1
.elseif ([enem3_y] > 185 && [enem3_x] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem3_x]
mov dx , [enem3_y]
call EnemyDesign1
.endif

.if (enemdestruct_13 == 0)
mov cx , [enem4_x]
mov dx , [enem4_y]
call EraseEnemyDesign1
.if ([enem4_y] >= 10 && [enem4_x] >= 10 && changeDirection2 == 0)
sub [enem4_y] , 1
sub [enem4_x] , 1
.elseif ([enem4_y] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem4_y] <= 185 && [enem4_x] >= 10 && changeDirection2 == 1)
add [enem4_y] , 1
sub [enem4_x] , 1
.elseif ([enem4_y] > 185 && [enem4_x] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem4_x]
mov dx , [enem4_y]
call EnemyDesign1
.endif

.if (enemdestruct_17 == 0)
mov cx , [enem5_x]
mov dx , [enem5_y]
call EraseEnemyDesign1
.if ([enem5_y] >= 10 && [enem5_x] >= 10 && changeDirection2 == 0)
sub [enem5_y] , 1
sub [enem5_x] , 1
.elseif ([enem5_y] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem5_y] <= 185 && [enem5_x] >= 10 && changeDirection2 == 1)
add [enem5_y] , 1
sub [enem5_x] , 1
.elseif ([enem5_y] > 185 && [enem5_x] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem5_x]
mov dx , [enem5_y]
call EnemyDesign1
.endif

.endif

.if (enemMovement2 == 4)

.if (enemdestruct_2 == 0)
mov cx , [enem1_x + 2]
mov dx , [enem1_y + 2]
call EraseEnemyDesign2
.if ([enem1_y + 2] >= 10 && [enem1_x + 2] >= 10 && changeDirection2 == 0)
sub [enem1_y + 2] , 1
sub [enem1_x + 2] , 1
.elseif ([enem1_y + 2] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem1_y + 2] <= 185 && [enem1_x + 2] >= 10 && changeDirection2 == 1)
add [enem1_y + 2] , 1
sub [enem1_x + 2] , 1
.elseif ([enem1_y + 2] > 185 && [enem1_x + 2] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem1_x + 2]
mov dx , [enem1_y + 2]
call EraseEnemyDesign2
.endif

.if (enemdestruct_6 == 0)
mov cx , [enem2_x + 2]
mov dx , [enem2_y + 2]
call EraseEnemyDesign2
.if ([enem2_y + 2] >= 10 && [enem2_x + 2] >= 10 && changeDirection2 == 0)
sub [enem2_y + 2] , 1
sub [enem2_x + 2] , 1
.elseif ([enem2_y + 2] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem2_y + 2] <= 185 && [enem2_x + 2] >= 10 && changeDirection2 == 1)
add [enem2_y + 2] , 1
sub [enem2_x + 2] , 1
.elseif ([enem2_y + 2] > 185 && [enem2_x + 2] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem2_x + 2]
mov dx , [enem2_y + 2]
call EnemyDesign2
.endif

.if (enemdestruct_10 == 0)
mov cx , [enem3_x + 2]
mov dx , [enem3_y + 2]
call EraseEnemyDesign2
.if ([enem3_y + 2] >= 10 && [enem3_x + 2] >= 10 && changeDirection2 == 0)
sub [enem3_y + 2] , 1
sub [enem3_x + 2] , 1
.elseif ([enem3_y + 2] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem3_y + 2] <= 185 && [enem3_x + 2] >= 10 && changeDirection2 == 1)
add [enem3_y + 2] , 1
sub [enem3_x + 2] , 1
.elseif ([enem3_y + 2] > 185 && [enem3_x + 2] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem3_x + 2]
mov dx , [enem3_y + 2]
call EnemyDesign2
.endif

.if (enemdestruct_14 == 0)
mov cx , [enem4_x + 2]
mov dx , [enem4_y + 2]
call EraseEnemyDesign2
.if ([enem4_y + 2] >= 10 && [enem4_x + 2] >= 10 && changeDirection2 == 0)
sub [enem4_y + 2] , 1
sub [enem4_x + 2] , 1
.elseif ([enem4_y + 2] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem4_y + 2] <= 185 && [enem4_x + 2] >= 10 && changeDirection2 == 1)
add [enem4_y + 2] , 1
sub [enem4_x + 2] , 1
.elseif ([enem4_y + 2] > 185 && [enem4_x + 2] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem4_x + 2]
mov dx , [enem4_y + 2]
call EnemyDesign2
.endif

.if (enemdestruct_18 == 0)
mov cx , [enem5_x + 2]
mov dx , [enem5_y + 2]
call EraseEnemyDesign2
.if ([enem5_y + 2] >= 10 && [enem5_x + 2] >= 10 && changeDirection2 == 0)
sub [enem5_y + 2] , 1
sub [enem5_x + 2] , 1
.elseif ([enem5_y + 2] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem5_y + 2] <= 185 && [enem5_x + 2] >= 10 && changeDirection2 == 1)
add [enem5_y + 2] , 1
sub [enem5_x + 2] , 1
.elseif ([enem5_y + 2] > 185 && [enem5_x + 2] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
.endif
mov cx , [enem5_x + 2]
mov dx , [enem5_y + 2]
call EnemyDesign2
.endif

.if (enemMovement3 == 4)

.if (enemdestruct_3 == 0)
mov cx , [enem1_x + 4]
mov dx , [enem1_y + 4]
call EraseEnemyDesign3
.if ([enem1_y + 4] >= 10 && [enem1_x + 4] >= 10 && changeDirection2 == 0)
sub [enem1_y + 4] , 1
sub [enem1_x + 4] , 1
.elseif ([enem1_y + 4] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem1_y + 4] <= 185 && [enem1_x + 4] >= 10 && changeDirection2 == 1)
add [enem1_y + 4] , 1
sub [enem1_x + 4] , 1
.elseif ([enem1_y + 4] > 185 && [enem1_x + 4] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem1_x + 4]
mov dx , [enem1_y + 4]
call EnemyDesign3
.endif

.if (enemdestruct_7 == 0)
mov cx , [enem2_x + 4]
mov dx , [enem2_y + 4]
call EraseEnemyDesign3
.if ([enem2_y + 4] >= 10 && [enem2_x + 4] >= 10 && changeDirection2 == 0)
sub [enem2_y + 4] , 1
sub [enem2_x + 4] , 1
.elseif ([enem2_y + 4] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem2_y + 4] <= 185 && [enem2_x + 4] >= 10 && changeDirection2 == 1)
add [enem2_y + 4] , 1
sub [enem2_x + 4] , 1
.elseif ([enem2_y + 4] > 185 && [enem2_x + 4] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem2_x + 4]
mov dx , [enem2_y + 4]
call EnemyDesign3
.endif

.if (enemdestruct_11 == 0)
mov cx , [enem3_x + 4]
mov dx , [enem3_y + 4]
call EraseEnemyDesign3
.if ([enem3_y + 4] >= 10 && [enem3_x + 4] >= 10 && changeDirection2 == 0)
sub [enem3_y + 4] , 1
sub [enem3_x + 4] , 1
.elseif ([enem3_y + 4] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem3_y + 4] <= 185 && [enem3_x + 4] >= 10 && changeDirection2 == 1)
add [enem3_y + 4] , 1
sub [enem3_x + 4] , 1
.elseif ([enem3_y + 4] > 185 && [enem3_x + 4] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem3_x + 4]
mov dx , [enem3_y + 4]
call EnemyDesign3
.endif

.if (enemdestruct_15 == 0)
mov cx , [enem4_x + 4]
mov dx , [enem4_y + 4]
call EraseEnemyDesign3
.if ([enem4_y + 4] >= 10 && [enem4_x + 4] >= 10 && changeDirection2 == 0)
sub [enem4_y + 4] , 1
sub [enem4_x + 4] , 1
.elseif ([enem4_y + 4] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem4_y + 4] <= 185 && [enem4_x + 4] >= 10 && changeDirection2 == 1)
add [enem4_y + 4] , 1
sub [enem4_x + 4] , 1
.elseif ([enem4_y + 4] > 185 && [enem4_x + 4] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem4_x + 4]
mov dx , [enem4_y + 4]
call EnemyDesign3
.endif

.if (enemdestruct_19 == 0)
mov cx , [enem5_x + 4]
mov dx , [enem5_y + 4]
call EraseEnemyDesign3
.if ([enem5_y + 4] >= 10 && [enem5_x + 4] >= 10 && changeDirection2 == 0)
sub [enem5_y + 4] , 1
sub [enem5_x + 4] , 1
.elseif ([enem5_y + 4] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem5_y + 4] <= 185 && [enem5_x + 4] >= 10 && changeDirection2 == 1)
add [enem5_y + 4] , 1
sub [enem5_x + 4] , 1
.elseif ([enem5_y + 4] > 185 && [enem5_x + 4] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem5_x + 4]
mov dx , [enem5_y + 4]
call EnemyDesign3
.endif

.endif

.if (enemMovement4 == 4)

.if (enemdestruct_4 == 0)
mov cx , [enem1_x + 6]
mov dx , [enem1_y + 6]
call EraseEnemyDesign4
.if ([enem1_y + 6] >= 10 && [enem1_x + 6] >= 10 && changeDirection2 == 0)
sub [enem1_y + 6] , 1
sub [enem1_x + 6] , 1
.elseif ([enem1_y + 6] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem1_y + 6] <= 185 && [enem1_x + 6] >= 10 && changeDirection2 == 1)
add [enem1_y + 6] , 1
sub [enem1_x + 6] , 1
.elseif ([enem1_y + 6] > 185 && [enem1_x + 6] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem1_x + 6]
mov dx , [enem1_y + 6]
call EnemyDesign4
.endif

.if (enemdestruct_8 == 0)
mov cx , [enem2_x + 6]
mov dx , [enem2_y + 6]
call EraseEnemyDesign4
.if ([enem2_y + 6] >= 10 && [enem2_x + 6] >= 10 && changeDirection2 == 0)
sub [enem2_y + 6] , 1
sub [enem2_x + 6] , 1
.elseif ([enem2_y + 6] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem2_y + 6] <= 185 && [enem2_x + 6] >= 10 && changeDirection2 == 1)
add [enem2_y + 6] , 1
sub [enem2_x + 6] , 1
.elseif ([enem2_y + 6] > 185 && [enem2_x + 6] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem2_x + 6]
mov dx , [enem2_y + 6]
call EnemyDesign4
.endif

.if (enemdestruct_12 == 0)
mov cx , [enem3_x + 6]
mov dx , [enem3_y + 6]
call EraseEnemyDesign4
.if ([enem3_y + 6] >= 10 && [enem3_x + 6] >= 10 && changeDirection2 == 0)
sub [enem3_y + 6] , 1
sub [enem3_x + 6] , 1
.elseif ([enem3_y + 6] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem3_y + 6] <= 185 && [enem3_x + 6] >= 10 && changeDirection2 == 1)
add [enem3_y + 6] , 1
sub [enem3_x + 6] , 1
.elseif ([enem3_y + 6] > 185 && [enem3_x + 6] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem3_x + 6]
mov dx , [enem3_y + 6]
call EnemyDesign4
.endif

.if (enemdestruct_16 == 0)
mov cx , [enem4_x + 6]
mov dx , [enem4_y + 6]
call EraseEnemyDesign4
.if ([enem4_y + 6] >= 10 && [enem4_x + 6] >= 10 && changeDirection2 == 0)
sub [enem4_y + 6] , 1
sub [enem4_x + 6] , 1
.elseif ([enem4_y + 6] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem4_y + 6] <= 185 && [enem4_x + 6] >= 10 && changeDirection2 == 1)
add [enem4_y + 6] , 1
sub [enem4_x + 6] , 1
.elseif ([enem4_y + 6] > 185 && [enem4_x + 6] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem4_x + 6]
mov dx , [enem4_y + 6]
call EnemyDesign4
.endif

.if (enemdestruct_20 == 0)
mov cx , [enem5_x + 6]
mov dx , [enem5_y + 6]
call EraseEnemyDesign4
.if ([enem5_y + 6] >= 10 && [enem5_x + 6] >= 10 && changeDirection2 == 0)
sub [enem5_y + 6] , 1
sub [enem5_x + 6] , 1
.elseif ([enem5_y + 6] < 10 && changeDirection2 == 0)
mov changeDirection2 , 1
.elseif ([enem5_y + 6] <= 185 && [enem5_x + 6] >= 10 && changeDirection2 == 1)
add [enem5_y + 6] , 1
sub [enem5_x + 6] , 1
.elseif ([enem5_y + 6] > 185 && [enem5_x + 6] >= 10 && changeDirection2 == 1)
mov changeDirection2 , 0
.endif
mov cx , [enem5_x + 6]
mov dx , [enem5_y + 6]
call EnemyDesign4
.endif

.endif

ret
movement4 endp

movement5 proc
.if (monsterdestruct_1 == 0)
mov cx , [monster1_x]
mov dx , [monster1_y]
call EraseEnemyDesign5
.if ([monster1_y] >= 10 && changeDirection3 == 0)
sub [monster1_y] , 1
.elseif ([monster1_y] <= 185 && changeDirection3 == 1)
add [monster1_y] , 1
.else
	.if ([monster1_y] < 10)
	mov changeDirection3 , 1
	.elseif ([monster1_y] > 185)
	mov changeDirection3 , 0
	.endif
.endif

mov cx , [monster1_x]
mov dx , [monster1_y]
call EnemyDesign5
.endif

ret
movement5 endp

movement6 proc
.if (monsterdestruct_2 == 0)
mov cx , [monster2_x]
mov dx , [monster2_y]
call EraseEnemyDesign5
.if ([monster1_y] <= 185 && changeDirection4 == 0)
add [monster2_y] , 1
.elseif ([monster1_y] >= 10 && changeDirection4 == 1)
sub [monster2_y] , 1
.else
	.if ([monster2_y] > 185)
	mov changeDirection4 , 1
	.elseif ([monster2_y] < 10)
	mov changeDirection4 , 0
	.endif
.endif

mov cx , [monster2_x]
mov dx , [monster2_y]
call EnemyDesign5
.endif

ret
movement6 endp

randompattern proc

	mov ah, 00h  ; interrupts to get system time        
    int 1ah      ; CX:DX now hold number of clock ticks since midnight      

    mov  ax, dx
    xor  dx, dx
    mov  cx, 4    
    div  cx
	inc dx
	mov pattern , dx

	mov ah , 00h
	mov al , 13h
	int 10h
ret
randompattern endp

randommovement proc

	mov ah, 00h  ; interrupts to get system time        
    int 1ah      ; CX:DX now hold number of clock ticks since midnight      

    mov  ax, dx
    xor  dx, dx
    mov  cx, 24    
    div  cx
	inc dx
	mov patterns , dx

	mov ah , 00h
	mov al , 13h
	int 10h

	.if (patterns == 1)
	mov enemMovement1 , 1
	mov enemMovement2 , 2
	mov enemMovement3 , 3
	mov enemMovement4 , 4
	.elseif (patterns == 2)
	mov enemMovement1 , 1
	mov enemMovement2 , 2
	mov enemMovement3 , 4
	mov enemMovement4 , 3
	.elseif (patterns == 3)
	mov enemMovement1 , 1
	mov enemMovement2 , 3
	mov enemMovement3 , 4
	mov enemMovement4 , 2
	.elseif (patterns == 4)
	mov enemMovement1 , 1
	mov enemMovement2 , 3
	mov enemMovement3 , 2
	mov enemMovement4 , 4
	.elseif (patterns == 5)
	mov enemMovement1 , 1
	mov enemMovement2 , 4
	mov enemMovement3 , 3
	mov enemMovement4 , 2
	.elseif (patterns == 6)
	mov enemMovement1 , 1
	mov enemMovement2 , 4
	mov enemMovement3 , 2
	mov enemMovement4 , 3

	.elseif (patterns == 7)
	mov enemMovement1 , 2
	mov enemMovement2 , 1
	mov enemMovement3 , 3
	mov enemMovement4 , 4
	.elseif (patterns == 8)
	mov enemMovement1 , 2
	mov enemMovement2 , 1
	mov enemMovement3 , 4
	mov enemMovement4 , 3
	.elseif (patterns == 9)
	mov enemMovement1 , 2
	mov enemMovement2 , 3
	mov enemMovement3 , 4
	mov enemMovement4 , 1
	.elseif (patterns == 10)
	mov enemMovement1 , 2
	mov enemMovement2 , 3
	mov enemMovement3 , 1
	mov enemMovement4 , 4
	.elseif (patterns == 11)
	mov enemMovement1 , 2
	mov enemMovement2 , 4
	mov enemMovement3 , 1
	mov enemMovement4 , 3
	.elseif (patterns == 12)
	mov enemMovement1 , 2
	mov enemMovement2 , 4
	mov enemMovement3 , 3
	mov enemMovement4 , 1

	.elseif (patterns == 13)
	mov enemMovement1 , 3
	mov enemMovement2 , 2
	mov enemMovement3 , 1
	mov enemMovement4 , 4
	.elseif (patterns == 14)
	mov enemMovement1 , 3
	mov enemMovement2 , 2
	mov enemMovement3 , 4
	mov enemMovement4 , 1
	.elseif (patterns == 15)
	mov enemMovement1 , 3
	mov enemMovement2 , 4
	mov enemMovement3 , 1
	mov enemMovement4 , 2
	.elseif (patterns == 16)
	mov enemMovement1 , 3
	mov enemMovement2 , 4
	mov enemMovement3 , 2
	mov enemMovement4 , 1
	.elseif (patterns == 17)
	mov enemMovement1 , 3
	mov enemMovement2 , 1
	mov enemMovement3 , 4
	mov enemMovement4 , 2
	.elseif (patterns == 18)
	mov enemMovement1 , 3
	mov enemMovement2 , 1
	mov enemMovement3 , 2
	mov enemMovement4 , 4

	.elseif (patterns == 19)
	mov enemMovement1 , 4
	mov enemMovement2 , 3
	mov enemMovement3 , 2
	mov enemMovement4 , 1
	.elseif (patterns == 20)
	mov enemMovement1 , 4
	mov enemMovement2 , 3
	mov enemMovement3 , 1
	mov enemMovement4 , 2
	.elseif (patterns == 21)
	mov enemMovement1 , 4
	mov enemMovement2 , 2
	mov enemMovement3 , 1
	mov enemMovement4 , 3
	.elseif (patterns == 22)
	mov enemMovement1 , 4
	mov enemMovement2 , 2
	mov enemMovement3 , 3
	mov enemMovement4 , 1
	.elseif (patterns == 23)
	mov enemMovement1 , 4
	mov enemMovement2 , 1
	mov enemMovement3 , 3
	mov enemMovement4 , 2
	.elseif (patterns == 24)
	mov enemMovement1 , 4
	mov enemMovement2 , 1
	mov enemMovement3 , 2
	mov enemMovement4 , 3

	.endif
ret
randommovement endp

resetcoordinates proc
mov var1 , 100d
mov var2 , 50d

mov cx , [enem1_x]
mov dx , [enem1_y]
call EraseEnemyDesign1

mov cx , [enem2_x]
mov dx , [enem2_y]
call EraseEnemyDesign1

mov cx , [enem3_x]
mov dx , [enem3_y]
call EraseEnemyDesign1

mov cx , [enem4_x]
mov dx , [enem4_y]
call EraseEnemyDesign1

mov cx , [enem5_x]
mov dx , [enem5_y]
call EraseEnemyDesign1

mov cx , [enem1_x + 2]
mov dx , [enem1_y + 2]
call EraseEnemyDesign2

mov cx , [enem2_x + 2]
mov dx , [enem2_y + 2]
call EraseEnemyDesign2

mov cx , [enem3_x + 2]
mov dx , [enem3_y + 2]
call EraseEnemyDesign2

mov cx , [enem4_x + 2]
mov dx , [enem4_y + 2]
call EraseEnemyDesign2

mov cx , [enem5_x + 2]
mov dx , [enem5_y + 2]
call EraseEnemyDesign3

mov cx , [enem1_x + 4]
mov dx , [enem1_y + 4]
call EraseEnemyDesign3

mov cx , [enem2_x + 4]
mov dx , [enem2_y + 4]
call EraseEnemyDesign3

mov cx , [enem3_x + 4]
mov dx , [enem3_y + 4]
call EraseEnemyDesign3

mov cx , [enem4_x + 4]
mov dx , [enem4_y + 4]
call EraseEnemyDesign3

mov cx , [enem5_x + 4]
mov dx , [enem5_y + 4]
call EraseEnemyDesign3

mov cx , [enem1_x + 6]
mov dx , [enem1_y + 6]
call EraseEnemyDesign4

mov cx , [enem2_x + 6]
mov dx , [enem2_y + 6]
call EraseEnemyDesign4

mov cx , [enem3_x + 6]
mov dx , [enem3_y + 6]
call EraseEnemyDesign4

mov cx , [enem4_x + 6]
mov dx , [enem4_y + 6]
call EraseEnemyDesign4

mov cx , [enem5_x + 6]
mov dx , [enem5_y + 6]
call EraseEnemyDesign4

.if (level == 3)
mov cx , [monster1_x]
mov dx , [monster1_y]
call EraseEnemyDesign5

mov cx , [monster2_x]
mov dx , [monster2_y]
call EraseEnemyDesign5
.endif
.if (pattern == 1)
call pattern1
.elseif (pattern == 2)
call pattern2
.elseif (pattern == 3)
call pattern3
.elseif (pattern == 4)
call pattern4
.else
call pattern1
.endif
ret
resetcoordinates endp

resetenemies proc
mov enemdestruct_1 , 0
mov enemdestruct_2 , 0
mov enemdestruct_3 , 0
mov enemdestruct_4 , 0
mov enemdestruct_5 , 0
mov enemdestruct_6 , 0
mov enemdestruct_7 , 0
mov enemdestruct_8 , 0
mov enemdestruct_9 , 0
mov enemdestruct_10 , 0
mov enemdestruct_11 , 0
mov enemdestruct_12 , 0
mov enemdestruct_13 , 0
mov enemdestruct_14 , 0
mov enemdestruct_15 , 0
mov enemdestruct_16 , 0
mov enemdestruct_17 , 0
mov enemdestruct_18 , 0
mov enemdestruct_19 , 0
mov enemdestruct_20 , 0
ret
resetenemies endp
collision proc
	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem1_x]
	mov dx , [enem1_y]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_1 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem2_x]
	mov dx , [enem2_y]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_5 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem3_x]
	mov dx , [enem3_y]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_9 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem4_x]
	mov dx , [enem4_y]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_13 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem5_x]
	mov dx , [enem5_y]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_17 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem1_x + 2]
	mov dx , [enem1_y + 2]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_2 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem2_x + 2]
	mov dx , [enem2_y + 2]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_6 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem3_x + 2]
	mov dx , [enem3_y + 2]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_10 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem4_x + 2]
	mov dx , [enem4_y + 2]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_14 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem5_x + 2]
	mov dx , [enem5_y + 2]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_18 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem1_x + 4]
	mov dx , [enem1_y + 4]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_3 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem2_x + 4]
	mov dx , [enem2_y + 4]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_7 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem3_x + 4]
	mov dx , [enem3_y + 4]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_11 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem4_x + 4]
	mov dx , [enem4_y + 4]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_15 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem5_x + 4]
	mov dx , [enem5_y + 4]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_19 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem1_x + 6]
	mov dx , [enem1_y + 6]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_4 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem2_x + 6]
	mov dx , [enem2_y + 6]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_8 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem3_x + 6]
	mov dx , [enem3_y + 6]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_12 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem4_x + 6]
	mov dx , [enem4_y + 6]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_16 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov var5 , cx
	mov var6 , dx

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [enem5_x + 6]
	mov dx , [enem5_y + 6]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (enemdestruct_20 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	.if (level == 3)
	mov cx , var5
	mov dx , var6

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [monster1_x]
	mov dx , [monster1_y]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (monsterdestruct_1 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif
	mov cx , var5
	mov dx , var6

	mov cx , var1
	mov dx , var2
	mov [var7] , cx
	mov [var8] , cx
	mov [var9] , dx
	mov [var10] , dx

	sub [var8] , 34
	sub [var9] , 23
	add [var10] , 12

	mov cx , [monster2_x]
	mov dx , [monster2_y]
	mov [var11] , cx
	mov [var12] , cx
	mov [var13] , dx
	mov [var14] , dx

	add [var14] , 10
	.if (monsterdestruct_2 == 0) 
	.if (cx < 10)
	mov cx , var5
	mov dx , var6
	dec life
	dec score
	call resetcoordinates
	.endif
	.if (dx <= [var14] && dx >= [var13])
	.if (dx <= [var10] && dx >= [var9])
	.if (cx <= [var7] && cx >= [var8])
	mov cx , var5
	mov dx , var6
	dec life
	call resetcoordinates
	.endif
	.endif
	.endif
	.endif

	.endif
	mov cx , var5
	mov dx , var6


ret
collision endp 

main proc 

mov ax , @data
mov ds , ax
mov level , 1d
mainmenu :
;mov ah , 00h
;mov al , 13h
;int 10h
mov life , 3
mov score , 0	
mov destructcounter , 0
call FileHandling					;FileHandling counter	

cmp opt , 3
je exit1

cmp level , 1
je Level1

cmp level , 2
je Level2
cmp level , 3
je Level3
Level1 :
mov destructcounter , 0
call resetenemies
call pattern1

mov var1 , 50d
mov var2 , 100d 

mov enmcounter , 1d
mov cx , 0
mov dx , 0
jmp espc

Level2 :
mov destructcounter , 0

call resetenemies
call randompattern
.if (pattern == 1)
call pattern1
.elseif (pattern == 2)
call pattern2
.elseif (pattern == 3)
call pattern3
.elseif (pattern == 4)
call pattern4
.endif

call randommovement

mov var1 , 50d
mov var2 , 100d

mov enmcounter , 1d
mov cx , 0
mov dx , 0

jmp espc

Level3 :
mov destructcounter , 0

call resetenemies
call randompattern
.if (pattern == 1)
call pattern1
.elseif (pattern == 2)
call pattern2
.elseif (pattern == 3)
call pattern3
.elseif (pattern == 4)
call pattern4
.endif

call randommovement

mov var1 , 50d
mov var2 , 100d

mov enmcounter , 1d
mov cx , 0
mov dx , 0

jmp espc

F :
	mov cx , var1
	mov dx , var2
	Fire counter

espc :
	  call collision
;          call showscore
	  .if (life == 0)
	  call GameOver
	  ;mov ah , 00h
	  ;int 16h
	  jmp mainmenu
	  .endif
	  ;mov ah , 00
	  ;mov al , 13h
	  ;int 10h
	  mov cx ,  var3
	  mov dx ,  var4
	  EraseSpaceship counter

L :

	mov cx ,  var1
	mov dx ,  var2
	Spaceship counter
	jmp Enemies

EnemiesDesigns :
				.if (enmcounter == 1 || enmcounter == 5 || enmcounter == 9 || enmcounter == 13 || enmcounter == 17)
				call EnemyDesign1 ;counter
				.endif
				.if (enmcounter == 2 || enmcounter == 6 || enmcounter == 10 || enmcounter == 14 || enmcounter == 18)
				call EnemyDesign2 ;counter
				.endif
				.if (enmcounter == 3 || enmcounter == 7 || enmcounter == 11 || enmcounter == 15 || enmcounter == 19)
				call EnemyDesign3 ;counter
				.endif
				.if (enmcounter == 4 || enmcounter == 8 || enmcounter == 12 || enmcounter == 16 || enmcounter == 20)
				call EnemyDesign4 ;counter
				.endif
				;.if (level == 3)
				;.if(monsterdestruct_1 == 0 || monsterdestruct_2 == 0)
				;call EnemyDesign5 ;counter
				;.endif
				;.endif
				inc enmcounter

Enemies :
			.if (enmcounter == 1)
			cmp enemdestruct_1 , 0
			jnz EC1
			mov cx , [enem1_x]
			mov dx , [enem1_y]
			jmp EnemiesDesigns
			EC1 :
			mov enmcounter , 2
			.endif

			.if (enmcounter == 2)
			cmp enemdestruct_2 , 0
			jnz EC2
			mov cx , [enem1_x + 2]
			mov dx , [enem1_y + 2]
			jmp EnemiesDesigns
			EC2 :
			mov enmcounter , 3
			.endif

			.if (enmcounter == 3)
			cmp enemdestruct_3 , 0
			jnz EC3
			mov cx , [enem1_x + 4]
			mov dx , [enem1_y + 4]
			jmp EnemiesDesigns
			EC3 :
			mov enmcounter , 4
			.endif

			.if (enmcounter == 4)
			cmp enemdestruct_4 , 0
			jnz EC4
			mov cx , [enem1_x + 6]
			mov dx , [enem1_y + 6]
			jmp EnemiesDesigns
			EC4 :
			mov enmcounter , 5
			.endif

			.if (enmcounter == 5 )
			cmp enemdestruct_5 , 0
			jnz EC5
			mov cx , [enem2_x]
			mov dx , [enem2_y]
			jmp EnemiesDesigns
			EC5 :
			mov enmcounter , 6
			.endif

			.if (enmcounter == 6)
			cmp enemdestruct_6 , 0
			jnz EC6
			mov cx , [enem2_x + 2]
			mov dx , [enem2_y + 2]
			jmp EnemiesDesigns
			EC6 :
			mov enmcounter , 7
			.endif

			.if (enmcounter == 7)
			cmp enemdestruct_7 , 0
			jnz EC7
			mov cx , [enem2_x + 4]
			mov dx , [enem2_y + 4]
			jmp EnemiesDesigns
			EC7 :
			mov enmcounter , 8
			.endif

			.if (enmcounter == 8)
			cmp enemdestruct_8 , 0
			jnz EC8
			mov cx , [enem2_x + 6]
			mov dx , [enem2_y + 6]
			jmp EnemiesDesigns
			EC8 :
			mov enmcounter , 9
			.endif

			.if (enmcounter == 9)
			cmp enemdestruct_9 , 0
			jnz EC9
			mov cx , [enem3_x]
			mov dx , [enem3_y]
			jmp EnemiesDesigns
			EC9 :
			mov enmcounter , 10
			.endif

			.if (enmcounter == 10)
			cmp enemdestruct_10 , 0
			jnz EC10
			mov cx , [enem3_x + 2]
			mov dx , [enem3_y + 2]
			jmp EnemiesDesigns
			EC10 :
			mov enmcounter , 11
			.endif

			.if (enmcounter == 11)
			cmp enemdestruct_11 , 0
			jnz EC11
			mov cx , [enem3_x + 4]
			mov dx , [enem3_y + 4]
			jmp EnemiesDesigns
			EC11 :
			mov enmcounter , 12
			.endif

			.if (enmcounter == 12)
			cmp enemdestruct_12 , 0
			jnz EC12
			mov cx , [enem3_x + 6]
			mov dx , [enem3_y + 6]
			jmp EnemiesDesigns
			EC12 :
			mov enmcounter , 13
			.endif

			.if (enmcounter == 13)
			cmp enemdestruct_13 , 0
			jnz EC13
			mov cx , [enem4_x]
			mov dx , [enem4_y]
			jmp EnemiesDesigns
			EC13 :
			mov enmcounter , 14
			.endif

			.if (enmcounter == 14)
			cmp enemdestruct_14 , 0
			jnz EC14
			mov cx , [enem4_x + 2]
			mov dx , [enem4_y + 2]
			jmp EnemiesDesigns
			EC14 :
			mov enmcounter , 15
			.endif

			.if (enmcounter == 15)
			cmp enemdestruct_15 , 0
			jnz EC15
			mov cx , [enem4_x + 4]
			mov dx , [enem4_y + 4]
			jmp EnemiesDesigns
			EC15 :
			mov enmcounter , 16
			.endif

			.if (enmcounter == 16)
			cmp enemdestruct_16 , 0
			jnz EC16
			mov cx , [enem4_x + 6]
			mov dx , [enem4_y + 6]
			jmp EnemiesDesigns
			EC16 :
			mov enmcounter , 17

			.endif

			.if (enmcounter == 17)
			cmp enemdestruct_17 , 0
			jnz EC17
			mov cx , [enem5_x]
			mov dx , [enem5_y]
			jmp EnemiesDesigns
			EC17 :
			mov enmcounter , 18
			.endif

			.if (enmcounter == 18)
			cmp enemdestruct_18 , 0
			jnz EC18
			mov cx , [enem5_x + 2]
			mov dx , [enem5_y + 2]
			jmp EnemiesDesigns
			EC18 :
			mov enmcounter , 19
			.endif

			.if (enmcounter == 19)
			cmp enemdestruct_19 , 0
			jnz EC19
			mov cx , [enem5_x + 4]
			mov dx , [enem5_y + 4]
			jmp EnemiesDesigns
			EC19 :
			mov enmcounter , 20
			.endif

			.if (enmcounter == 20)
			cmp enemdestruct_20 , 0
			jnz EC20
			mov cx , [enem5_x + 6]
			mov dx , [enem5_y + 6]
			jmp EnemiesDesigns
			EC20 :
			mov enmcounter , 21
			.endif
	
			.if (Level == 3)
			mov cx , [monster1_x]
			mov dx , [monster1_y]
			call EnemyDesign5
			mov cx , [monster2_x]
			mov dx , [monster2_y]
			call EnemyDesign5
			.endif
			mov enmcounter , 1	

			.if (destructcounter == 22 && level == 3)
			call GAMEOVER
			mov ah , 00
			int 16h
			jmp mainmenu
			.endif

			.if (destructcounter >= 20)
			.if (level != 3)
			mov destructcounter , 0
			inc level
			.endif
			.if (Level == 2)
			jmp Level2
			.elseif (Level == 3)
			jmp Level3
			.endif
			.endif

			.if (level > 1)
			call movement1
			call movement2
			call movement3
			call movement4
			.endif
			.if (level == 3)
			call movement5
			call movement6
			.endif

			jmp keys
			
keys :
	store_value var1 , var2 , var3 , var4

	;mov ah , 05
	;mov al , 0
	;int 10h
	;mov ah , 01h
	;int 16h
	;jz espc
	mov ah , 00h
	int 16h

	.if (ah == 72)
	cmp var2 , 15
	jle espc
	sub var2 , 3
	jmp espc
	.endif

	.if (ah == 80)
	cmp var2 , 185
	jge espc
	add var2 , 3
	jmp espc
	.endif
	.if (ah == 77)
	cmp var1 , 315
	jge espc
	add var1 , 3
	jmp espc
	.endif
	.if (ah == 75)
	cmp var1 , 30
	jle espc
	sub var1 , 3
	jmp espc
	.endif
	cmp ah , 57
	je F
	
	cmp ah , 28
	je exit1

	jmp espc 

exit1:
	mov ah , 00h
	mov al , 03h
	int 10h
	mov ah , 4ch
	int 21h 
main endp
end main
