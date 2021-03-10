; Claudio Saillant
; 90363
; lab section 018
; Assignment - 3 B
; Description : z0 = x + 13, z1 = y - x, z2 =  r + z1 - 13 then move into arrray Calculation in assembly x86
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	z WORD 3 dup(?)
	x WORD 7
	y WORD 20
	r WORD 4
.code

main PROC
	;	Write assembly code
	mov eax, 0 
	mov edx, 0
	mov ecx, 0 
	mov ebx, 0 

	mov dx, x
	add dx, 13 ; z0 = x + 13

	mov cx, y
	mov ax, x
	sub cx, ax ; z1 = y - x 

	mov bx, r
	add bx, cx
	sub bx, 13 ;  z2 =  r + z1 - 13

	mov [z], dx
	mov [z+2], cx
	mov [z+4], bx


	INVOKE ExitProcess, 0
main ENDP
END main