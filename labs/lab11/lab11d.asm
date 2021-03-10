.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD
;Student: Claudio Saillant
;Class: CSC3210
;Assignment#: 4
;Description: Translation of a for loop given to assembly lang
.data
	; define variables
	sum DWORD 0
	array DWORD 10,11,13,18,21,23,24,17,45
	arraysize = ($ - array) / TYPE array
	original DWORD 0
	index DWORD 0
.code
	main PROC
	mov eax, 0
	mov ecx, 0
	mov ebx, 0
	mov edx, 0 
	mov original, arraysize
	mov esi, arraysize
	sub esi, 1

	L1: 
		dec esi
		cmp esi, -1
		JE exitloop
		mov ecx, 0
		jmp L2
	L2:
		mov edx, index
		cmp edx, original
		JA L1
		mov eax, [array + ecx]
		test eax, 1
		JZ L3
		add ecx, 4
		add index, 1
		jmp L2
	L3:
		add sum, eax
		add ecx, 4
		add index, 1
		jmp L2
	exitloop:
		mov eax, sum

	

		


	INVOKE ExitProcess, 0
main ENDP
END main