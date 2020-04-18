call_Mouse macro p1
	push ax
		mov ax,0001h   ;ax=000 mouse initilization
		int 33h			;ax=001 show mouse position
		
		
		Level:
			mov ax,0005h
			mov bx,0
			int 33h
			
		cmp ax,1
		jne level
		
		pop ax
endm