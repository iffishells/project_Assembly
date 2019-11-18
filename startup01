include irvine16.inc
	;-------------loopE and LoopZ--------------------
	; test opernation just effect the value of the flag
.data
	msg1 db "1. Which two team was newly promoted BPL 2016?: $"
	qsn1 db "a. Dhaka,Rajshahi            b. Khulna ,Rangpor      c. Khulna,Rajshahi: $"
	rht1 db " Your answer is right: $"
	wrn1 db " Your answer is wrong:$" 

	;////////////////////////////////////////
.code
	main proc
	MOV AX,@DATA
	MOV DS,AX
	;----------print the string ---------------------------
	MOV AH , 9
	MOV DX ,OFFSET msg1
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
	MOV EDX,offset qsn1
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
	;mov ah,1
	;int 21h
		
	
main endp
		
end main
