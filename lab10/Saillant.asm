.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD
;Student: Claudio Saillant
;Class: CSC3210
;Description: This program stores the minimiun from the array given in AX and min.

.data
	; define variables
	arr WORD 10, 2, 23, 45, 21, 11, 1
	min WORD ?


.code
	main PROC
	mov ax, 10
	cmp ax, [arr + 2]
	JLE L1
	mov ax, [arr + 2]
	L1:
		CMP ax, [arr + 4]
		JLE L2
		mov ax, [arr + 4]
	L2:
		CMP ax, [arr + 6]
		JLE L3
		mov ax, [arr + 6]
	L3:
		CMP ax, [arr + 8]
		JLE L4
		mov ax, [arr + 8]
	L4:
		CMP ax, [arr + 10]
		JLE L5
		mov ax, [arr + 10]
	L5:
		mov min, ax
		


	INVOKE ExitProcess, 0
main ENDP
END main