.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
.code

main PROC
	;	Write assembly code
	mov ax, 7FF0h


	INVOKE ExitProcess, 0
main ENDP
END main