.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD
;Student: Claudio Saillant
;Class: CSC3210
;Lab#: 14
;Description: Use recursion to add numbers from n to 0
INCLUDE Irvine32.inc

.code
main PROC
	push 3
	pop ecx
	mov  eax,0	
	call mysum	
	call WriteDec	; display eax
	exit

main ENDP

mysum PROC

	cmp  ecx,0
	jz  myend ;exit if zero
	add  eax,ecx
	dec  ecx
	call mysum
	myend:	
		ret
		mysum ENDP

END Main