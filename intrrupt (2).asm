include irvine16.inc
include headerfile.inc

include level2_code.inc
include level1_code.inc
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
	
	
	intro db "      Quiz Game over Math simple Questions      $ "
	
	count_Number byte 10D
		Quest11 db "1. Number of machine cycles required for RET instruction in 8085 microprocessor is  ? $"
	Mcq_Quest11 db "a. 1           b. 2    c. 3     d. 5  $ ";,;0dh,0ah  ;amswer 3
	
	
	Quest12 db "2. Which of the following interrupt has highest Priority $"
	Mcq_Quest12 db "a. INTR            b. TRAP      c. RST7.5   d. RST $"; ANSWER B

	Quest13 db "3. Instructions performing actions in assembly language are called ?  $"
	Mcq_Quest13 db "a. IMPERATIVE STATEMENT           b. DECLAERATIVE       c. DIRECTIVE    d. None of the Above  $"; Answer A

	Quest14 db "4. How many memory locations are required to store the instruction LXIH, 0800H in an 8085 assembly language program  ? $"
	Mcq_Quest14 db "a. 1            b. 2        c. 3    d.4    $";,;0dh,0ah ; correct 2(b)

	Quest15 db "5. In 8085 which is/are the 16 bit registers? ? $"
	Mcq_Quest15 db "a. program counter           b. stack pointer      c. A &B   d. None of the Above $"; ;option c

	Quest16 db "6. Which of the following instruction(s) can be performed only in CX register ? $"
	Mcq_Quest16 db "a. Loop           b. MUL,DIV,CBW      c. ADD ,SUB $";,option a

	Quest17 db "7. The CX register full name is ? $"
	Mcq_Quest17 db "a. Accumulator Register      b. Base Register      c. Counter Register  d.None of the Above $";,;0dh,0ah

	Quest18 db "8. how many bits in one double word ?  $"
	Mcq_Quest18 db "a. 8 bits            b. 16 bits      c. 32 bits $";,;0dh,0ah
		
	Quest19 db "9. How many bytes in a double word $"
	Mcq_Quest19 db "a. 1 byte            b. 2 byte      c. 4 byte $";,;0dh,0ah

	Quest20 db "10. What is the length of the 8088’s physical address  ? $"
	Mcq_Quest20 db "a. 8 bits            b. 16 bits      c. 20 bits $"; correct opt is b

	right_answer_2 db " Your answer is right: $";0dh,0ah
	wrong_answer_2 db " Your answer is wrong:$" ;0dh,0ah
	ending_2 db "        Your Quiz is over know           $" 
	
	
	intro_2 db "            Quiz Game over Math simple Questions      $ "
	
	count_Number_2 db 10
	

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
	input

	main endp
		
	
	cmp al,'A'
	je next
	
	next:
		
		Assem
	
	
	;cmp al ,'M'
	;je good
	;jmp exit
	;good:
		
	;exit :
	;	programe_exit

End main