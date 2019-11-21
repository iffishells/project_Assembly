print macro p1
	MOV DX,OFFSET p1
	MOV AH,9
	int 21h
endm


newline macro p2
	mov ah,2
	mov dl,0ah
	int 21h
	mov dl,0dh
	int 21h
	mov dl,0dh
	int 21h
endm

input macro p3
	mov ah,1
	int 21h
endm

programe_exit macro p4
	mov ah,4ch
	int 21h
endm