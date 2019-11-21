include irvine16.inc
include headerfile.inc
	
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
	Mcq_Quest5 db "a. 20            b. 50      c. 70 $";,;0dh,0ah

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
	total_marks byte "        your Total marks : 10      $"
	obtained_marks byte "      Your obtained Marks = $"
	intro db "      Quiz Game over Math simple Questions     $ "
	
	count_Number byte 10D
	;////////////////////////////////////////
.code
	main proc
	MOV AX,@DATA
	MOV DS,AX
	xor eax,eax
	xor edx,edx
	xor ecx,ecx
	xor ebx,ebx
	xor esi,esi
	;----------print the string ---------------------------
	print intro		;intro
	;-----------count in the counter for write answer-----------------------------------------------
	mov cl,count_number
	
		newline    ;new line and mocve the cursor on the next line
	
	
	
	;call GetNumberOfConsoleMouseButtons

	print Quest1

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------
	
	print Mcq_Quest1
	
		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------
	
	
	;------------user input ------------------
	input
		;newline    ;new line and mocve the cursor on the next line(because of some reasons)
	;----------------------------------------------------------
	
	
	cmp al,'c'
	je	ri_a			;jump if equal
	jmp wrong
	
	ri_a:

		print right_answer

		newline    ;new line and mocve the cursor on the next line
		
		jmp Question1
	
	wrong:
		sub cl,1
		print wrong_answer
	

		newline    ;new line and mocve the cursor on the next line
		
	Question1:
		print Quest2
	
		newline    ;new line and mocve the cursor on the next line
	
		
	
		print Mcq_Quest2
	
	;newline    ;new line and mocve the cursor on the next line(because of some reason
	;---------------user input-------------------------------------------
	
	input
	;-----------new line + next line----------------------------

		newline    ;new line and mocve the cursor on the next line

		
	cmp al,'b'
		je ri_a2
		jmp wrong2
		
	ri_a2:
		print right_answer

		newline    ;new line and mocve the cursor on the next line

		jmp Question3
	
	
	
	wrong2:

		sub cl,1

	print wrong_answer

		newline    ;new line and mocve the cursor on the next line
	Question3:
		

	print Quest3

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------
	
	print Mcq_Quest3

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------
		mov ah,1
		int 21h
		
	cmp al,'a'
		je ri_a3
		jmp wrong3
		
	ri_a3:

	print right_answer
	
		newline    ;new line and mocve the cursor on the next line

		jmp Question4
	
	
	
	wrong3:
	
		sub cl,1
	
		print wrong_answer
	
		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------
	Question4:
	
	print Quest4

		newline    ;new line and mocve the cursor on the next line
	print Mcq_Quest4

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------
	
		input
	
	cmp al,'a'
		je ri_a4
		jmp wrong4
		
	ri_a4:
	
		print right_answer

	newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------

		jmp Question5
	
	
	
	wrong4:
	
		sub cl,1

		print wrong_answer

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------
	Question5:
	

	print Quest5

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------

	print Mcq_Quest5

	newline    ;new line and mocve the cursor on the next line
	
	input	
	
	
	cmp al,'b'
		je ri_a5
		jmp wrong5
		
	ri_a5:

	print right_answer

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------

		jmp Question6
	
	
	
	wrong5:
	
		sub cl,1
	
	print wrong_answer

		newline    ;new line and mocve the cursor on the next line
		
	Question6:

	print Quest6

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------

	print Mcq_Quest6

		newline    ;new line and mocve the cursor on the next line
	;------------------input----------------------------------------

	input	
	cmp al,'a'
		je ri_a6
		jmp wrong6
		
	ri_a6:

	print right_answer

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------

		jmp Question7

	wrong6:

		sub cl,1

	print wrong_answer

		newline    ;new line and mocve the cursor on the next line
	Question7:
		print Quest7

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------
	
	print Mcq_Quest7

		newline    ;new line and mocve the cursor on the next line
	input	
	cmp al,'a'
		je ri_a7
		jmp wrong7
		
	ri_a7:

	print right_answer

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------

		jmp Question8
	
	
	
	wrong7:
		sub cl,1

	print wrong_answer

		newline    ;new line and mocve the cursor on the next line
	Question8:

	print Quest8

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------

	print Mcq_Quest8
	;-----------new line + next line----------------------------

	newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------
	
	input	
	cmp al,'a'
		je ri_a8
		jmp wrong8
		
	ri_a8:

	print right_answer

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------

		jmp Question9
	
	
	
	wrong8:
	
		sub cl,1

	print wrong_answer


		newline    ;new line and mocve the cursor on the next line
	Question9:

	print Quest9

		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------

	print Mcq_Quest9

		newline    ;new line and mocve the cursor on the next line
	;----------------input------------------------------------------
	
	input	
	cmp al,'a'
		je ri_a9
		jmp wrong9
		
	ri_a9:

	print right_answer


		newline    ;new line and mocve the cursor on the next line
	;;----------------------------------------------------------

		jmp Question10
		
		
	
	
	
	wrong9:

		sub cl,1

	print wrong_answer

		newline    ;new line and mocve the cursor on the next line	
		
	Question10:

	print Quest10
	
		newline    ;new line and mocve the cursor on the next line
	;----------------------------------------------------------

	print Mcq_Quest10
	
	
		newline    ;new line and mocve the cursor on the next line
	;------------input----------------------------------------------
	
	input	
	
	cmp al,'a'
		je ri_a10
		jmp wrong10
		
	ri_a10:
	
	print right_answer
	;-----------new line + next line----------------------------

		newline    ;new line and mocve the cursor on the next line
	;;----------------------------------------------------------

		jmp Question11
	
	wrong10:
	sub cl,1

	print wrong_answer
	
	
		newline    ;new line and mocve the cursor on the next line
	;------------------------------------------------------------
	Question11:
	
	print ending
		newline
	print total_marks

		newline    ;new line and mocve the cursor on the next line
	
	print obtained_marks
	
	;;-------count the numbers-----------------------------------------------------
		
		add cl,48
		mov dl,cl
		mov ah,2
		int 21h
		
	;-------------------------terminate the programe-----------------------------------	
		programe_exit

main endp

	
end main