.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	myBytes BYTE 10h, 20h, 30h, 40h
	myWords WORD 8Ah, 38h, 72h, 44h, 66h
	myDoubles DWORD 1, 2, 3, 4, 5
	myPointer DWORD myDoubles
.code

main PROC
	;	Write assembly code
	mov esi, OFFSET myBytes
	mov ax, [esi] ; ax = 2010h
	mov eax, DWORD PTR myWords ; eax = 0038008A
	mov esi, myPointer
	mov ax, [esi+2] ;ax = 
	mov ax, [esi+6]
	mov ax, [esi+4]
	INVOKE ExitProcess, 0
main ENDP
END main