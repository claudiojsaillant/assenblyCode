.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	myString byte "This is a very long string made by your instructor to test how $ works in this lab hope you will like it"
	myString_length = ($ - myString) ; the dollar is the 
.code

main PROC
	;	Write assembly code

	;lea EDX, [0]
	;mov edx, 0h
	mov eax, 0
	mov al, myString_length

	INVOKE ExitProcess, 0
main ENDP
END main