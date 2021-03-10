.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	myWord word 2 dup(1,2,3)
.code

main PROC
	;	Write assembly code

	;lea EDX, [0]
	;mov edx, 0h
	mov eax, 0
	mov ax, myWord+0
	add ax, myWord+2
	add ax, myWord+4
	sub ax, myWord+6
	sub ax, myWord+8
	sub ax, myWord+10

	INVOKE ExitProcess, 0
main ENDP
END main