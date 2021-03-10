.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	arrayD DWORD 1,2,3
.code

main PROC
	;	Write assembly code
	mov eax, arrayD
	xchg eax, [arrayD+4]
	xchg eax, [arrayD+8]
	mov arrayD, eax


	INVOKE ExitProcess, 0
main ENDP
END main