.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	val1 word 1000h
	val2 word 2000h
.code

main PROC
	;	Write assembly code
	mov ax, val1
	xchg ax, val2
	mov val1, ax



	INVOKE ExitProcess, 0
main ENDP
END main