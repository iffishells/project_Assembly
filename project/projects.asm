include irvine16.inc
include headerfile.inc
include Header_mouse.inc
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
	;ending db "        Your Quiz is over know           $" 
	
	
	;intro db "      Quiz Game over Math simple Questions      $ "
	
	count_Number byte 10
		
	Quest11 db "1. Number of machine cycles required for RET instruction in 8085 microprocessor is  $"
	Mcq_Quest11 db "a. 1           b. 2    c. 3     d. 5  $ ";
	
	
	Quest12 db "2. Which of the following interrupt has highest Priority $"
	Mcq_Quest12 db "a. INTR            b. TRAP      c. RST7.5   d. RST $"; ANSWER B

	Quest13 db "3. Instructions performing actions in assembly language are called ?  $"
	Mcq_Quest13 db "a. IMPERATIVE STATEMENT           b. DECLAERATIVE       c. DIRECTIVE    d. None   $"; Answer A

	Quest14 db "4. How many memory locations are required to store the instruction LXIH, 0800H in an 8085 assembly language program  ? $"
	Mcq_Quest14 db "a. 1            b. 2        c. 3    d.4    $";,;0dh,0ah ; correct 2(b)

	Quest15 db "5. In 8085 which is/are the 16 bit registers? ? $"
	Mcq_Quest15 db "a. program counter           b. stack pointer      c. A &B   d. None $"; ;option c

	Quest16 db "6. Which of the following instruction(s) can be performed only in CX register  $"
	Mcq_Quest16 db "a. Loop           b. MUL,DIV,CBW      c. ADD ,SUB $";,option a

	Quest17 db "7. The CX register full name is ? $"
	Mcq_Quest17 db "a. Accumulator Register      b. Base Register      c. Counter Register  d.None  $";,;0dh,0ah

	Quest18 db "8. how many bits in one double word ?  $"
	Mcq_Quest18 db "a. 8 bits            b. 16 bits      c. 32 bits $";,;0dh,0ah
		
	Quest19 db "9. How many bytes in a double word $"
	Mcq_Quest19 db "a. 1 byte            b. 2 byte      c. 4 byte $";,;0dh,0ah

	Quest20 db "10. What is the length of the 8088’s physical address   $"
	Mcq_Quest20 db "a. 8 bits            b. 16 bits      c. 20 bits $"; correct opt is b

	right_answer_2 db " Your answer is right: $"
	wrong_answer_2 db " Your answer is wrong:$"
	ending_2 db "        Your Quiz is over know           $" 
	
	
	intro_2 db "            Congratulation , You Completed The Quiz: $"
	
	count_Number_2 db 10
	
	
	total_marks db "            YOUR Total Marks is =   10      $"
	obtain_marks db "           Your obtained Marks is = $"

	select0 byte "!!!!!! Please Choose Your Course!!!!! : $" 
	select byte " Please press 'M'  for Simple Mathematics : $"
	select1 byte " Please press 'A' for  Assembly Language : $"
.code
	main proc
	
	MOV AX,@DATA
	MOV DS,AX
	xor eax,eax
	xor edx,edx
	xor ecx,ecx
	xor ebx,ebx
	xor esi,esi
	;------------------------------------------------------------------------------------------------
	
	call_Mouse
	
	mov ah,00h	;for the full screen
	mov al,02h ; video mode
	int 10h
	
	
	
	;for coloring 
	pushad
	mov ah,9
	mov cx,lengthof select0-1
	mov bl,0Ah
	int 10h
	popad
	
	print Select0  ;for msg
	
	newline
	
	pushad
	mov ah,9
	mov cx,lengthof select-1
	mov bl,0Ah
	int 10h
	popad
	
	print select  ;for msg
	
	newline
	
	pushad
	mov ah,9
	mov cx,lengthof select1-1
	mov bl,0Ah
	int 10h
	popad
	
	print select1	;msg
		
	newline
	input 				;user input 
	
	cmp al,'m'
		je L1
		jne L3
	
	L3:
		cmp al,'a'
		je L4
		jne next
	L1:
	;	pushad
	;	mov ah,9
	;	mov cx,lengthof intro-1
	;	mov bl,0Ah
	;	int 10h
	;	popad
	
	;	print intro
		call simple_Math_Quizz
		newline
		jmp next
	
	L4:
		call Assembly_Quizz
		newline
		jmp next
	
	;----------print the string ---------------------------

	next:
		programe_exit

main endp
	simple_Math_Quizz proc
		
		xor ecx,ecx
		mov cl,count_number
	

	newline
	;----------------------------------------------------------
	
	
	
	
	pushad
	mov ah,9
	mov cx,lengthof Quest1-1
	mov bl,0Ah
	int 10h
	popad
	
	print Quest1
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest1-1
	mov bl,0Ah
	int 10h
	popad
	
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
		pushad
		mov ah,9
		mov cx,lengthof right_answer-1
		mov bl,0Ah
		int 10h
		popad
		
		print right_answer
		newline
		
		jmp Question1
	
	wrong:
		
		sub cl,1
		pushad
		mov ah,9
		mov cx,lengthof wrong_answer-1
		mov bl,0Ah
		int 10h
		popad
		print wrong_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
		
	Question1:
		pushad
		mov ah,9
		mov cx,lengthof Quest2-1
		mov bl,0Ah
		int 10h
		popad	
		print Quest2
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		pushad
		mov ah,9
		mov cx,lengthof Mcq_Quest2-1
		mov bl,0Ah
		int 10h
		popad
	
		print Mcq_Quest2
	;-----------new line + next line----------------------------

	newline
	;---------------user input-------------------------------------------
	
	input
	;-----------new line + next line----------------------------

	;newline
	;----------------------------------------------------------

		
	cmp al,'b'
		je ri_a2
		jmp wrong2
		
	ri_a2:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	
	print right_answer
	
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question3
	
	
	
	wrong2:

		sub cl,1
		
		pushad
		mov ah,9
		mov cx,lengthof wrong_answer-1
		mov bl,0Ah
		int 10h
		popad
	print wrong_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	Question3:
	pushad
	mov ah,9
	mov cx,lengthof Quest3-1
	mov bl,0Ah
	int 10h
	popad	

	print Quest3
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest3-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest3
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
		
	input
	cmp al,'a'
		je ri_a3
		jmp wrong3
		
	ri_a3:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
		print right_answer
		
	;-----------new line + next line----------------------------
	
	newline
	;;----------------------------------------------------------

		jmp Question4
	
	
	
	wrong3:
	
		sub cl,1
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	print wrong_answer
	
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	Question4:
	
	pushad
	mov ah,9
	mov cx,lengthof Quest4-1
	mov bl,0Ah
	int 10h
	popad
	print Quest4
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest4-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest4
	;;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
		input
	
	cmp al,'a'
		je ri_a4
		jmp wrong4
		
	ri_a4:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
	print right_answer
	
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question5
	
	
	
	wrong4:
	
		sub cl,1
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	

	print wrong_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	Question5:
	
	
	pushad
	mov ah,9
	mov cx,lengthof Quest5-1
	mov bl,0Ah
	int 10h
	popad
	print Quest5
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest4-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest5
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	input	
	
	
	cmp al,'b'
		je ri_a5
		jmp wrong5
		
	ri_a5:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
		print right_answer
		
	;;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question6
	
	
	
	wrong5:
	
		sub cl,1
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	print wrong_answer
	;;-----------new line + next line----------------------------

	newline
		
	Question6:
	pushad
	mov ah,9
	mov cx,lengthof Quest6-1
	mov bl,0Ah
	int 10h
	popad

	print Quest6
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest6-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest6
	;-----------new line + next line----------------------------

	newline
	;------------------input----------------------------------------

	input	
	cmp al,'a'
		je ri_a6
		jmp wrong6
		
	ri_a6:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad

		print right_answer
		
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question7

	wrong6:

		sub cl,1

	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
		print wrong_answer
	;;-----------new line + next line----------------------------

	newline
	
	Question7:
	pushad
	mov ah,9
	mov cx,lengthof Quest7-1
	mov bl,0Ah
	int 10h
	popad
		print Quest7
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest7-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest7
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	input	
	cmp al,'a'
		je ri_a7
		jmp wrong7
		
	ri_a7:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
		print right_answer
		
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question8
	
	
	
	wrong7:
		sub cl,1
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	

		print wrong_answer
	;-----------new line + next line----------------------------

	newline
	Question8:
		pushad
	mov ah,9
	mov cx,lengthof Quest8-1
	mov bl,0Ah
	int 10h
	popad

	print Quest8
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest8-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest8
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	
	input	
	cmp al,'a'
		je ri_a8
		jmp wrong8
		
	ri_a8:
	pushad
	mov ah,9
	mov cx,lengthof right_answer
	mov bl,0Ah
	int 10h
	popad
			print right_answer
			
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------

		jmp Question9
	
	
	
	wrong8:
	
		sub cl,1
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	

		print wrong_answer
	;-----------new line + next line----------------------------


	newline
	Question9:
	pushad
	mov ah,9
	mov cx,lengthof Quest9-1
	mov bl,0Ah
	int 10h
	popad
	print Quest9
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest9-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest9
	;-----------new line + next line----------------------------

	newline
	;----------------input------------------------------------------
	
	input	
	cmp al,'a'
		je ri_a9
		jmp wrong9
		
	ri_a9:
	
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
		print right_answer
		
	;-----------new line + next line----------------------------


	newline
	;;----------------------------------------------------------

		jmp Question10
	
	wrong9:

		sub cl,1
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	

	print wrong_answer
	;-----------new line + next line----------------------------

	newline	
		
	Question10:
	pushad
	mov ah,9
	mov cx,lengthof Quest10-1
	mov bl,0Ah
	int 10h
	popad
	print Quest10
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest10-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest10
	;-----------new line + next line----------------------------
	
	newline
	;------------input----------------------------------------------
	
	input	
	
	cmp al,'a'
		je ri_a10
		jmp wrong10
		
	ri_a10:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
	print right_answer
	
	;-----------new line + next line----------------------------

	newline
	;;----------------------------------------------------------

		jmp Question11
	
	wrong10:
	sub cl,1
	
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	

	print wrong_answer
	;-----------new line + next line----------------------------
	
	newline
	;------------------------------------------------------------
	Question11:
	
	;-----------new line + next line----------------------------
		newline
	;;-------count the numbers-----------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof total_marks-1
	mov bl,0Ah
	int 10h
	popad
	print total_marks
	newline
	
	pushad
	mov ah,9
	mov cx,lengthof obtain_marks-1
	mov bl,0Ah
	int 10h
	popad
	print obtain_marks
	
	mov eax,0
	mov al,cl
	call writedec
	
	
	newline
	
	pushad
	mov ah,9
	mov cx,lengthof intro_2-1
	mov bl,0Ah
	int 10h
	popad
	print intro_2
	ret
	
	
	
	simple_Math_Quizz endp
	
	;''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	;2nd procedure
	Assembly_Quizz proc
		
	
	;-----------new line + next line----------------------------

	
	newline
	;--------------------count numbers
	mov cl ,count_Number_2

	;----------------------------------------------------------
	
	
	
	;call GetNumberOfConsoleMouseButtons
	pushad
	mov ah,9
	mov cx,lengthof Quest11-1
	mov bl,0Ah
	int 10h
	popad
	print Quest11
	;-----------new line + next line----------------------------
	
	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest11-1
	mov bl,0Ah
	int 10h
	popad
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
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
		print right_answer	
		add cl,1
		newline
		
		jmp Question1
	
	wrong:
		sub cl,1
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	
		print wrong_answer
	;-----------new line + next line----------------------------
	
	newline
	;;----------------------------------------------------------
		
	Question1:
	pushad
	mov ah,9
	mov cx,lengthof Quest12-1
	mov bl,0Ah
	int 10h
	popad
	print Quest12
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest12-1
	mov bl,0Ah
	int 10h
	popad
		
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
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
		print right_answer
		add cl,1
	;-----------new line + next line----------------------------

	newline
	;;----------------------------------------------------------

		jmp Question3
	
	
	
	wrong2:
		sub cl,1
		
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
		print wrong_answer
	;-----------new line + next line----------------------------

	
		newline
	;;----------------------------------------------------------
	Question3:
	
	pushad
	mov ah,9
	mov cx,lengthof Quest13-1
	mov bl,0Ah
	int 10h
	popad

	print Quest13
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest13-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest13
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------

	input	
	
	cmp al,'a'
		je ri_a3
		jmp wrong3
		
	ri_a3:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad

	print right_answer
	add cl,1
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------

		jmp Question4
	
	
	
	wrong3:
	sub cl,1
		
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	print wrong_answer
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	Question4:
	
	pushad
	mov ah,9
	mov cx,lengthof Quest14-1
	mov bl,0Ah
	int 10h
	popad
	print Quest14
	
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------
		
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest14-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest14
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	input	
	cmp al,'b'
		je ri_a4
		jmp wrong4
		
	ri_a4:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
	print right_answer
	add cl,1
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------

		jmp Question5
		
	wrong4:
	sub cl,1
	
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	
	print wrong_answer
	;;-----------new line + next line----------------------------
		newline
	;----------------------------------------------------------
	Question5:
	pushad
	mov ah,9
	mov cx,lengthof Quest15-1
	mov bl,0Ah
	int 10h
	popad
	
	print Quest15
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest15-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest15
	;-----------new line + next line----------------------------

	newline 
	;----------------------------------------------------------
	input	
	cmp al,'c'
		je ri_a5
		jmp wrong5
		
	ri_a5:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad	

	print right_answer
	add cl,1
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------

		jmp Question6
	
	
	
	wrong5:
	sub cl,1
	
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	print wrong_answer
	;;-----------new line + next line----------------------------

	newline
		
	Question6:
	pushad
	mov ah,9
	mov cx,lengthof Quest16-1
	mov bl,0Ah
	int 10h
	popad
	print Quest16
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest16-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest16
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	input	
	cmp al,'a'
		je ri_a6
		jmp wrong6
		
	ri_a6:
	
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	
	print wrong_answer
	add cl,1
	;-----------new line + next line----------------------------

	newline
	;;----------------------------------------------------------

		jmp Question7
	
	
	
	wrong6:
	sub cl,1
	
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	print wrong_answer
	;-----------new line + next line----------------------------

	newline

	Question7:

	pushad
	mov ah,9
	mov cx,lengthof Quest17-1
	mov bl,0Ah
	int 10h
	popad
	print Quest17
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------
	
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest17-1
	mov bl,0Ah
	int 10h
	popad
	print  Mcq_Quest17
	;;-----------new line + next line----------------------------
	;newline
	;;----------------------------------------------------------
	input	
	cmp al,'c'
		je ri_a7
		jmp wrong7
		
	ri_a7:
	
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	print wrong_answer
	add cl,1
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------

		jmp Question8
	
	
	
	wrong7:
	sub cl,1
	
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	print wrong_answer
	;-----------new line + next line----------------------------
	newline
	Question8:
	
	pushad
	mov ah,9
	mov cx,lengthof Quest18-1
	mov bl,0Ah
	int 10h
	popad
	print Quest18
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest18-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest18
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	input	

	cmp al,'c'
		je ri_a8
		jmp wrong8
		
	ri_a8:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	print right_answer
	add cl,1
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------

		jmp Question9
	
	
	
	wrong8:
	sub cl,1
	
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	print wrong_answer
	;-----------new line + next line----------------------------
	newline
	Question9:
	pushad
	mov ah,9
	mov cx,lengthof Quest19-1
	mov bl,0Ah
	int 10h
	popad
	print Quest19
	newline
	 
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest19-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest19
	;-----------new line + next line----------------------------

	newline
	;----------------------------------------------------------
	input	
	cmp al,'c'
		je ri_a9
		jmp wrong9
		
	ri_a9:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
	print right_answer
	add cl,1
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------

		jmp Question10	
	
	wrong9:
	sub cl,1
	
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	print wrong_answer
	;-----------new line + next line----------------------------
	
	newline	
		
	Question10:
	pushad
	mov ah,9
	mov cx,lengthof Quest20-1
	mov bl,0Ah
	int 10h
	popad
		print Quest20
	;-----------new line + next line----------------------------
		newline
	;----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof Mcq_Quest20-1
	mov bl,0Ah
	int 10h
	popad
	print Mcq_Quest20
	;-----------new line + next line----------------------------
	newline
	;----------------------------------------------------------
	input	
	cmp al,'b'
		je ri_a10
		jmp wrong10
		
	ri_a10:
	pushad
	mov ah,9
	mov cx,lengthof right_answer-1
	mov bl,0Ah
	int 10h
	popad
	print right_answer
	add cl,1
	;-----------new line + next line----------------------------
	newline
	;;----------------------------------------------------------

		jmp Question11
		
		
	wrong10:
	sub cl,1
	
	pushad
	mov ah,9
	mov cx,lengthof wrong_answer-1
	mov bl,0Ah
	int 10h
	popad
	
	
	print wrong_answer
	;-----------new line + next line----------------------------
	newline
	;------------------------------------------------------------
	Question11:
	pushad
	mov ah,9
	mov cx,lengthof ending_2-1
	mov bl,0Ah
	int 10h
	popad
	print ending_2
	;-----------new line + next line----------------------------
	newline
	;------------------------------------------------------------
	
	pushad
	mov ah,9
	mov cx,lengthof total_marks-1
	mov bl,0Ah
	int 10h
	popad
	print total_marks
	newline
	
	pushad
	mov ah,9
	mov cx,lengthof obtain_marks-1
	mov bl,0Ah
	int 10h
	popad
	print obtain_marks
	mov eax,0
	mov al,cl
	call writedec
	;-----------------------------------new line---------------------------------
	newline
	;--------------msg-----------------------------------------------------------
	pushad
	mov ah,9
	mov cx,lengthof intro_2-1
	mov bl,0Ah
	int 10h
	popad
		print intro_2
	ret
	Assembly_Quizz endp
	
	
End main