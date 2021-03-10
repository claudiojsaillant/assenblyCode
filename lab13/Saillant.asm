.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD
;Student: Claudio Saillant
;Class: CSC3210
;Lab#: 13
;Description: Procedure to find element in array and using pop, push built in functions
.data
	; define variables
	array DWORD 10h,20h,30h,40h,50h
	sample DWORD 70h
.code
	main PROC
		mov eax, sample
		mov edi, OFFSET array
		mov ecx, LENGTHOF array
		mov edx, TYPE array
		call findsample

		INVOKE ExitProcess, 0
	main ENDP

	findsample PROC
		;save a copy of the registers in the stack
		push ecx
		push esi
		push ebx
		push edx

		;Implement Search here 
		forloop:
			mov ebx, [edi]
			add edi, edx
			cmp eax, ebx
			JE found
			cmp ecx, 1
			JE notfound
			loop forloop

		found:
			mov eax, ebx
			jmp exitfunc

		notfound:
			mov eax, -1

		exitfunc:

		;re-store the items from the stack

		pop edx
		pop ebx
		pop esi
		pop ecx
		ret

	findsample ENDP

END main