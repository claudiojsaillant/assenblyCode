.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables

.code

main PROC
	;	Write assembly code

	mov ecx,15
	mov ebx,15
	mov edx,31

	add ecx,ebx
	sub ecx,edx
	mov eax,ecx

	INVOKE ExitProcess, 0
main ENDP
END main