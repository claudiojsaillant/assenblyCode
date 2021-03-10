; Claudio Saillant
; 90363
; lab section 018
; Assignment - 3A 
; Description : -val2 + 7 - (-val3 + val1) * 2 Calculation in assembly x86
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; define variables
	val1 BYTE 12
	val2 BYTE 9
	val3 BYTE 2
.code

main PROC
	;	Write assembly code
	mov eax, 0 
	mov edx, 0
	mov ecx, 0 
	mov ebx, 0 

	neg val2
	neg val3

	movsx dx, val1
	movsx cx, val2
	movsx ax, val3

	add ax, dx ; -val3 + val1 (10)
	add ax,ax ; (-val3 + val1) * 2 (20)
	
	add cx, 7 ; -val2 + 7 (2)
	sub cx, ax ; -val2 + 7 - (-val3 + val1) * 2
	
	mov bx, cx




	INVOKE ExitProcess, 0
main ENDP
END main