.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	myByte BYTE 9Bh
.code

main PROC
	;	Write assembly code
	mov bx, 0A69Bh
	movzx eax, bx

	movzx eax, myByte


	INVOKE ExitProcess, 0
main ENDP
END main