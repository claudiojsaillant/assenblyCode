.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	varB BYTE 65h, 31h, 02h, 05h
	varW WORD 6543h,1202h
	varD DWORD 12345678h
.code

main PROC
	;	Write assembly code
	mov ax, WORD PTR [varB+2] ; ax = 0502
	mov bl, BYTE PTR varD ; bl = C078
	mov bl, BYTE PTR [varW+2] ; bl = 0002
	mov ax, WORD PTR [varD+2] ; ax =  1234
	mov eax, DWORD PTR varW ; eax = 12026543
	INVOKE ExitProcess, 0
main ENDP
END main