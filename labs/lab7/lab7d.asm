.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	Rval SDWORD ?
	Xval SDWORD 23
	Yval SDWORD 35
	Zval SDWORD 44
.code

main PROC
	;	Write assembly code
	mov eax, Xval
	neg eax
	mov ebx, Yval
	sub ebx, Zval
	add eax, ebx
	mov Rval, eax


	INVOKE ExitProcess, 0
main ENDP
END main