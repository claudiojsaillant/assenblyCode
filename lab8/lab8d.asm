.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	myBytes BYTE 10h, 20h, 30h, 40h
	myWords WORD 3 dup(?), 2000h
	myString BYTE "ABCDE"
.code

main PROC
	;	Write assembly code ;  
	mov eax, TYPE myBytes ; eax = 1
	mov eax, LENGTHOF myBytes; eax = 4
	mov eax, SIZEOF myBytes ; eax = 4 ( 4 * 1 = 4 )
	mov eax, TYPE myWords ; eax = 2
	mov eax, LENGTHOF myWords ; eax = 4
	mov eax, SIZEOF myWords ; eax = 8
	mov eax, SIZEOF myString ; eax = 5
	INVOKE ExitProcess, 0
main ENDP
END main