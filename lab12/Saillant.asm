.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD
;Student: Claudio Saillant
;Class: CSC3210
;Lab#: 12
;Description: Translation of a for while loop given to assembly lang + use of mult and dic
.data
	; define variables
	array1 byte 13h,14h,15h,16h
	length1 = ($ - array1) / TYPE array1
	array2 byte 12h, 13h, 14h, 15h
	length2 = ($ - array2) / TYPE array2
	sample1 byte 30h
	sample2 byte 5h
	index byte 0
	maxlenght byte ?
	exp1 word ?
.code
	
	main PROC

	mov eax, 0
	mov ebx, 0
	mov ecx, 0
	mov edx, 0

	mov ax, length1
	mov bx, length2

	cmp ax, bx
	JB lenght2max

	mov maxlenght, length1

	lenght2max:
		mov maxlenght, length2
	movsx esi, maxlenght
	;while loop
	whilee:
		movsx ax, index
		movsx bx, maxlenght
		cmp bx, ax
		JB exitloop
		JE exitloop
		jmp myif
		inc index
		jmp whilee

	myif:
		movsx ax, index
		movsx bx, index
		movsx ax, [array1 + ax]
		movsx bx, [array2 + bx]
		cmp ax, bx
		JB myelse

		
		movsx ax, index
		movsx ax, [array1 + ax]
		mul sample1
		mov cx, ax ;array1[index] * sample1

		movsx ax, index
		movsx ax, [array2 + ax]
		mul sample2
		mov bx, ax ;array2[index] * sample2

		cmp bx, 0 ;Also handle corner cases
		JE myelse  ; (e.g. if the divisor is zero, assign 0 to exp1 )

		mov ax, cx

		xor edx, edx
		div ebx
		mov exp1, ax

		inc index 
		jmp whilee
	
	myelse:
		mov exp1, 0
		inc index
		jmp whilee

	exitloop:


	INVOKE ExitProcess, 0
main ENDP
END main