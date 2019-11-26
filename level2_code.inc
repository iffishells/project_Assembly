;----------------------------macro---------------------------------------------
Assem macro p1
	Assembly proc

	MOV AX,@DATA
	MOV DS,AX
	xor eax,eax
	xor edx,edx
	xor ecx,ecx
	xor ebx,ebx
	;----------print the string ---------------------------
	print intro_2
	;-----------new line + next line----------------------------

	
	newline
	;--------------------count numbers
	mov cl ,count_Number_2

	;----------------------------------------------------------
	
	
	
	;call GetNumberOfConsoleMouseButtons
	
	print Quest11
	;-----------new line + next line----------------------------
	
	newline
	;----------------------------------------------------------
	
	print Mcq_Quest11
	;-----------new line + next line----------------------------
		newline
	;----------------------------------------------------------
	
	
	;------------user input ------------------
	
	input
	;------------------------------------------------
	
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
	;;----------------------------------------------------------
		
	Question1:
	
	print Quest12
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		
	print Mcq_Quest12
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------
	input
	;----------------------------------------------------------

		
	cmp al,'b'
		je ri_a2
		jmp wrong2
		

	ri_a2:

		print right_answer
	;-----------new line + next line----------------------------

	newline
	;;----------------------------------------------------------

		jmp Question3
	
	
	
	wrong2:
		sub cl,1
		print wrong_answer
	;-----------new line + next line----------------------------

	
		newline
	;;----------------------------------------------------------
	Question3:
		

	print Quest13
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------

	print Mcq_Quest13
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------

	input	
	
	cmp al,'a'
		je ri_a3
		jmp wrong3
		
	ri_a3:
	

	print right_answer
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------

		jmp Question4
	
	
	
	wrong3:
	sub cl,1
	print wrong_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	Question4:
	print Quest14
	
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------

	print Mcq_Quest14
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	input	
	cmp al,'b'
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
	;;-----------new line + next line----------------------------
		newline
	;----------------------------------------------------------
	Question5:
	
	
	print Quest15
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	print Mcq_Quest15
	;-----------new line + next line----------------------------

	newline 
	;----------------------------------------------------------
	input	
	cmp al,'c'
		je ri_a5
		jmp wrong5
		
	ri_a5:
	

	print right_answer
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------

		jmp Question6
	
	
	
	wrong5:
	sub cl,1
	print wrong_answer
	;;-----------new line + next line----------------------------

	newline
		
	Question6:

	print Quest16
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	print Mcq_Quest16
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	input	
	cmp al,'a'
		je ri_a6
		jmp wrong6
		
	ri_a6:
	
	print wrong_answer
	;-----------new line + next line----------------------------

	newline
	;;----------------------------------------------------------

		jmp Question7
	
	
	
	wrong6:
	sub cl,1
	print wrong_answer
	;-----------new line + next line----------------------------

	newline

	Question7:

	print Quest17
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------
	print  Mcq_Quest17
	;;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------
	input	
	cmp al,'c'
		je ri_a7
		jmp wrong7
		
	ri_a7:
	
	print wrong_answer
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------

		jmp Question8
	
	
	
	wrong7:
	sub cl,1
	print wrong_answer
	;-----------new line + next line----------------------------
	newline
	Question8:
	print Quest18
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	print Mcq_Quest18
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	input	

	cmp al,'c'
		je ri_a8
		jmp wrong8
		
	ri_a8:
	
	print right_answer
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------

		jmp Question9
	
	
	
	wrong8:
	sub cl,1
	print wrong_answer
	;-----------new line + next line----------------------------
	newline
	Question9:
	print Mcq_Quest19
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	print Mcq_Quest19
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	input	
	cmp al,'c'
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
		print Quest20
	;-----------new line + next line----------------------------
		newline
	;----------------------------------------------------------
	print Mcq_Quest20
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	input	
	cmp al,'b'
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
	print ending_2
	;-----------new line + next line----------------------------
	newline
	;------------------------------------------------------------
		add cl,48
		mov dl,cl
		mov ah,2
		int 21h
		
		
	programe_exit
	

Assembly endp

	
end Assembly
endm
