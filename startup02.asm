include irvine16.inc
	;-------------loopE and LoopZ--------------------
	; test opernation just effect the value of the flag
.data
	Quest1 db "1. 2+5 =  $"
	Mcq_Quest1 db "a. 8            b. -1      c. 7 $";,;0dh,0ah
	
	
	Quest2 db "1. 5+5 =  $"
	Mcq_Quest2 db "a. 0            b. 10      c. 100 $";,;0dh,0ah
	
	right_answer db " Your answer is right: $";0dh,0ah
	wrong_answer db " Your answer is wrong:$" ;0dh,0ah
	check db " yesh :$" 
	
	;////////////////////////////////////////
.code
	main proc
	MOV AX,@DATA
	MOV DS,AX
	xor eax,eax
	xor edx,edx
	xor ecx,ecx
	xor ebx,ebx
	;----------print the string ---------------------------
	MOV AH , 9
	MOV DX ,OFFSET Quest1
	INT 21H
	;-----------new line + next line----------------------------
		mov ah,2
		mov dl,0ah
		int 21h
		mov dl,0dh
		int 21h
		mov dl,0dh
		int 21h
	;----------------------------------------------------------
	mov ah,9
	MOV EDX,offset Mcq_Quest1
	int 21h
	;-----------new line + next line----------------------------
		mov ah,2
		mov dl,0ah
		int 21h
		mov dl,0dh
		int 21h
		mov dl,0dh
		int 21h
	;----------------------------------------------------------
	
	
	;------------user input ------------------
	mov ah,1
	int 21h
	;------------------------------------------------
	
	;-----------new line + next line----------------------------
;		mov ah,2
;		mov dl,0ah
;		int 21h
;		mov dl,0dh
;		int 21h
;		mov dl,0dh
;		int 21h
	;----------------------------------------------------------
	
	
	cmp al,'c'
	je	ri_a			;jump if equal
	jmp wrong
	
	ri_a:
		mov ah,9
		mov dx,offset right_answer
		int 21h
			
			mov ah,2
			mov dl,0ah
			int 21h
			mov dl,0dh
			int 21h
			mov dl,0dh
			int 21h
		
		
		jmp Question1
	
	wrong:
		mov ah,9
		mov dx,offset wrong_answer
		int 21h
	
	;-----------new line + next line----------------------------
		mov ah,2
		mov dl,0ah
		int 21h
		mov dl,0dh
		int 21h
		mov dl,0dh
		int 21h
	;----------------------------------------------------------
		
	Question1:
		mov ah,9
		mov dx,offset Quest2
		int 21h

	;-----------new line + next line----------------------------
		mov ah,2
		mov dl,0ah
		int 21h
		mov dl,0dh
		int 21h
		mov dl,0dh
		int 21h
	;----------------------------------------------------------

		
		mov ah,9
		mov dx,offset Mcq_Quest2
		int 21h
	;-----------new line + next line----------------------------
		mov ah,2
		mov dl,0ah
		int 21h
		mov dl,0dh
		int 21h
		mov dl,0dh
		int 21h
	;----------------------------------------------------------
		mov ah,1	;user input
		int 21h
	;-----------new line + next line----------------------------
;		mov ah,2
;		mov dl,0ah
;		int 21h
;		mov dl,0dh
;		int 21h
;		mov dl,0dh
;		int 21h
	;----------------------------------------------------------

		
	cmp al,'b'
		je ri_a2
		jmp wrong2
		
	ri_a2:
		mov ah,9
		mov dx,offset right_answer
		int 21h
	;-----------new line + next line----------------------------
		mov ah,2
		mov dl,0ah
		int 21h
		mov dl,0dh
		int 21h
		mov dl,0dh
		int 21h
	;----------------------------------------------------------

		jmp Question3
	
	
	
	wrong2:
		mov ah,9
		mov dx,offset wrong_answer
		int 21h
	;-----------new line + next line----------------------------
		mov ah,2
		mov dl,0ah
		int 21h
		mov dl,0dh
		int 21h
		mov dl,0dh
		int 21h
	;----------------------------------------------------------
	Question3:
	
	
main endp

	
end main
