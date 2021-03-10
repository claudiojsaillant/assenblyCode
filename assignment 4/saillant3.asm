.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD
;Student: Claudio Saillant
;Class: CSC3210
;Assignment#: 4
;Description: Translation of a for loop given to assembly lang
.data
	; define variables
	a word 9
	b word 8
	x word 11
.code
	main PROC
	mov eax, 0
	mov ebx, 0
	mov ecx, 0
	mov ax, a
	mov bx, b
	mov cx, x
	myloop:
		cmp cx, 0
		JB exitloop  ; jmp if x < 0 
		cmp cx, 0    ; if x == 0 get out of loop
		JE exitloop
		jmp myIf
	myIf:
		cmp cx, 3    ; if x = 3 go to else
		JE myElse     
		cmp ax, cx   ; if a > x check second condition
		JA checkSecond
		cmp cx, ax    ;
		JE checkSecond ; if a == x jump to second condition
		sub cx, 2    ; a < x and x != 3 so go inside if statement
		jmp myloop
	checkSecond:
		cmp cx, bx   ; x > b go to else statement
		JA myElse
		cmp cx, bx    ; if x = 3 go to else
		JE myElse ; if b == x jump to else statement
		sub cx, 2    ; then x != 3 and b > x, go inside if statement
		jmp myloop
	myElse:
		sub cx, 1
		jmp myloop
	exitloop:
		mov ecx, 0

		


	INVOKE ExitProcess, 0
main ENDP
END main