.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	dVal DWORD ?
.code

main PROC
	;	Write assembly code
	mov dVal, 12345678h ; dVal = 12345678
	mov ax, WORD PTR dVal + 2; ax = 1234
	add ax, 3; ax = 1237
	mov WORD PTR dVal, ax ; dVal = 12341237
	mov eax, dVal ; EAX = 12341237

	INVOKE ExitProcess, 0
main ENDP
END main