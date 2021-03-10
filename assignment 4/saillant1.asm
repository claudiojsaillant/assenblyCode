.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD
;Student: Claudio Saillant
;Class: CSC3210
;Assignment#: 4
;Description: Arranges array letters in the correct place

.data
	; define variables
	arr DWORD "B", "A", "D", "C", "F", "E", "H", "G"

.code
	main PROC
	mov edi,OFFSET arr     ; 1: EDI = address of intarray
	mov ecx,LENGTHOF arr   ; 2: initialize loop counter
	sar ecx, 1
	mov eax, 0
	mov ebx, 0
	L1:
	mov eax,[edi]
	mov ebx, [edi + 4]
	mov [edi], ebx
	mov [edi+4], eax
	add edi, 8      ; 6: point to next element
	loop L1                ; 7: repeat until ECX = 0



	INVOKE ExitProcess, 0
main ENDP
END main