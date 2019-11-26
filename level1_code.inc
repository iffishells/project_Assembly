
;---------------------macro-------------------------------------
Mat macro p2
	math proc
	MOV AX,@DATA
	MOV DS,AX
	xor eax,eax
	xor edx,edx
	xor ecx,ecx
	xor ebx,ebx
	xor esi,esi
	;----------print the string ---------------------------
	

	print intro
	;-----------count in the counter for write answer-----------------------------------------------
	mov cl,count_number
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	
	
	;call GetNumberOfConsoleMouseButtons

	print Quest1
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	print Mcq_Quest1
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	
	;------------user input ------------------
	input
	
	;----------------------------------------------------------
	
	
	cmp al,'c'
	je	ri_a			;jump if equal
	jmp wrong
	
	ri_a:

		print right_answer

		newline
		
		jmp Question1
	
	wrong:
		
		sub cl,1
	
		print wrong_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
		
	Question1:
	
		print Quest2
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		
	
		print Mcq_Quest2
	;-----------new line + next line----------------------------

	newline
	;---------------user input-------------------------------------------
	
	input
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		
	cmp al,'b'
		je ri_a2
		jmp wrong2
		
	ri_a2:
	
	print right_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question3
	
	
	
	wrong2:

		sub cl,1

	print wrong_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	Question3:
		

	print Quest3
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	print Mcq_Quest3
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
		mov ah,1
		int 21h
		
	cmp al,'a'
		je ri_a3
		jmp wrong3
		
	ri_a3:

	print right_answer
	;-----------new line + next line----------------------------
	
	newline
	;;----------------------------------------------------------

		jmp Question4
	
	
	
	wrong3:
	
		sub cl,1
	
	print wrong_answer
	
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	Question4:
	
	print Quest4
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	print Mcq_Quest4
	;;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
		input
	
	cmp al,'a'
		je ri_a4
		jmp wrong4
		
	ri_a4:
	
	print right_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question5
	
	
	
	wrong4:
	
		sub cl,1

	print wrong_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	Question5:
	

	print Quest5
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

	print Mcq_Quest5
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	input	
	
	
	cmp al,'b'
		je ri_a5
		jmp wrong5
		
	ri_a5:

	print right_answer
	;;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question6
	
	
	
	wrong5:
	
		sub cl,1
	
	print wrong_answer
	;;-----------new line + next line----------------------------

	newline
		
	Question6:

	print Quest6
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

	print Mcq_Quest6
	;-----------new line + next line----------------------------

	newline
	;------------------input----------------------------------------

	input	
	cmp al,'a'
		je ri_a6
		jmp wrong6
		
	ri_a6:

	print right_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question7

	wrong6:

		sub cl,1

	print wrong_answer
	;;-----------new line + next line----------------------------

	newline
	Question7:
	
	print Quest7
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	print Mcq_Quest7
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	;	mov ah,1
	;	int 21h
	input	
	cmp al,'a'
		je ri_a7
		jmp wrong7
		
	ri_a7:

	print right_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question8
	
	
	
	wrong7:
		sub cl,1

	print wrong_answer
	;-----------new line + next line----------------------------

	newline
	Question8:

	print Quest8
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

	print Mcq_Quest8
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	input	
	cmp al,'a'
		je ri_a8
		jmp wrong8
		
	ri_a8:

	print right_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question9
	
	
	
	wrong8:
	
		sub cl,1

	print wrong_answer
	;-----------new line + next line----------------------------


	newline
	Question9:

	print Quest9
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

	print Mcq_Quest9
	;-----------new line + next line----------------------------

	newline
	;----------------input------------------------------------------
	
	input	
	cmp al,'a'
		je ri_a9
		jmp wrong9
		
	ri_a9:

	print right_answer
	;-----------new line + next line----------------------------


	newline
	;;----------------------------------------------------------

		jmp Question10
		
		
	
	
	
	wrong9:

		sub cl,1

	print wrong_answer
	;-----------new line + next line----------------------------

	newline	
		
	Question10:

	print Quest10
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

	print Mcq_Quest10
	;-----------new line + next line----------------------------
	
	newline
	;------------input----------------------------------------------
	
	input	
	
	cmp al,'a'
		je ri_a10
		jmp wrong10
		
	ri_a10:
	
	print right_answer
	;-----------new line + next line----------------------------

	newline
	;;----------------------------------------------------------

		jmp Question11
	
	wrong10:
	sub cl,1

	print wrong_answer
	;-----------new line + next line----------------------------
	
	newline
	;------------------------------------------------------------
	Question11:
	
	print ending
	;-----------new line + next line----------------------------
		newline
	;;-------count the numbers-----------------------------------------------------
		
		add cl,48
		mov dl,cl
		mov ah,2
		int 21h
		
	;-------------------------terminate the programe-----------------------------------	
		programe_exit

math endp

	
end math

endm