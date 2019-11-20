include irvine16.inc
	;-------------loopE and LoopZ--------------------
	; test opernation just effect the value of the flag
.data
	Quest1 db "1. 2+5 =  ? $"
	Mcq_Quest1 db "a. 8            b. -1      c. 7 $";,;0dh,0ah
	
	
	Quest2 db "2. 5+5 = ? $"
	Mcq_Quest2 db "a. 0            b. 10      c. 100 $";,;0dh,0ah

	Quest3 db "3. 1-1 = ?  $"
	Mcq_Quest3 db "a. 0            b. +6      c. +10 $";,;0dh,0ah

	Quest4 db "4. 10+10 = ? $"
	Mcq_Quest4 db "a. 20            b. 30      c. 40 $";,;0dh,0ah

	Quest5 db "5. 20+30 =  ? $"
	Mcq_Quest5 db "a. 20            b. 50      c. 50 $";,;0dh,0ah

	Quest6 db "6. 100-9 = ? $"
	Mcq_Quest6 db "a. 91            b. 50      c. 88 $";,;0dh,0ah

	Quest7 db "7. 45-5 = ? $"
	Mcq_Quest7 db "a. 40            b. 65      c. 85 $";,;0dh,0ah

	Quest8 db "8. 9+6 = ?  $"
	Mcq_Quest8 db "a. 14            b. 96      c. 10 $";,;0dh,0ah
		
	Quest9 db "9. 15+9 = ?  $"
	Mcq_Quest9 db "a. 25            b. 96      c. 10 $";,;0dh,0ah

	Quest10 db "10. 9+6 = ?  $"
	Mcq_Quest10 db "a. 14            b. 96      c. 10 $";,;0dh,0ah

	right_answer db " Your answer is right: $";0dh,0ah
	wrong_answer db " Your answer is wrong:$" ;0dh,0ah
	ending db "        Your Quiz is over know           $" 
	
	
	intro db "      Quiz Game over Math simple Questions      $ "
	
	count_Number byte 0
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
	
	mov ah,9
	mov dx,offset intro
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
	
	
	
	;call GetNumberOfConsoleMouseButtons
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
	MOV DX,offset Mcq_Quest1
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
		inc count_Number
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
		dec count_Number
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
		inc count_Number
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
		dec count_Number
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
		
		MOV AH,9
		MOV DX,OFFSET Quest3
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
		MOV AH,9
		MOV DX,OFFSET Mcq_Quest3
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
		mov ah,1
		int 21h
		
	cmp al,'a'
		je ri_a3
		jmp wrong3
		
	ri_a3:
		inc count_Number
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

		jmp Question4
	
	
	
	wrong3:
		dec count_Number
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
	Question4:
		MOV AH,9
		MOV DX,OFFSET Quest4
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
		MOV AH,9
		MOV DX,OFFSET Mcq_Quest4
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
		mov ah,1
		int 21h
		
	cmp al,'a'
		je ri_a4
		jmp wrong4
		
	ri_a4:
		inc count_Number
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

		jmp Question5
	
	
	
	wrong4:
		dec count_Number
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
	Question5:
	
		MOV AH,9
		MOV DX,OFFSET Quest5
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
		MOV AH,9
		MOV DX,OFFSET Mcq_Quest5
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
		mov ah,1
		int 21h
		
	cmp al,'b'
		je ri_a5
		jmp wrong5
		
	ri_a5:
		inc count_Number
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

		jmp Question6
	
	
	
	wrong5:
		dec count_Number
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

		
	Question6:
		MOV AH,9
		MOV DX,OFFSET Quest6
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
		MOV AH,9
		MOV DX,OFFSET Mcq_Quest6
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
		mov ah,1
		int 21h
		
	cmp al,'a'
		je ri_a6
		jmp wrong6
		
	ri_a6:
		inc count_Number
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

		jmp Question7
	
	
	
	wrong6:
		dec count_Number
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
	
	Question7:
		MOV AH,9
		MOV DX,OFFSET Quest7
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
		MOV AH,9
		MOV DX,OFFSET Mcq_Quest7
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
		mov ah,1
		int 21h
		
	cmp al,'a'
		je ri_a7
		jmp wrong7
		
	ri_a7:
		inc count_Number
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

		jmp Question8
	
	
	
	wrong7:
		dec count_Number
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

	Question8:
		MOV AH,9
		MOV DX,OFFSET Quest8
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
		MOV AH,9
		MOV DX,OFFSET Mcq_Quest8
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
		mov ah,1
		int 21h
		
	cmp al,'a'
		je ri_a8
		jmp wrong8
		
	ri_a8:
		inc count_Number
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

		jmp Question9
	
	
	
	wrong8:
		dec count_Number
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
	
	Question9:
		MOV AH,9
		MOV DX,OFFSET Quest9
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
		MOV AH,9
		MOV DX,OFFSET Mcq_Quest9
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
		mov ah,1
		int 21h
		
	cmp al,'a'
		je ri_a9
		jmp wrong9
		
	ri_a9:
		inc count_Number
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

		jmp Question10
		
		
	
	
	
	wrong9:
		dec count_Number
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
		
		
	Question10:
		MOV AH,9
		MOV DX,OFFSET Quest10
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
		MOV AH,9
		MOV DX,OFFSET Mcq_Quest10
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
		mov ah,1
		int 21h
		
	cmp al,'a'
		je ri_a10
		jmp wrong10
		
	ri_a10:
		inc count_Number
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

		jmp Question11
		
		
	
	
	
	wrong10:
		dec count_Number
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
	;------------------------------------------------------------
	Question11:
		mov ah,9
		mov dx,offset ending
		int 21h
	
	;-----------new line + next line----------------------------
		mov ah,2
		mov dl,0ah
		int 21h
		mov dl,0dh
		int 21h
		mov dl,0dh
		int 21h
	;------------------------------------------------------------
	
	mov ah,9
	mov eax
main endp

	
end main
