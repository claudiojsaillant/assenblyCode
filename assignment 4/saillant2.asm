.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD
;Student: Claudio Saillant
;Class: CSC3210
;Assignment#: 4
;Description: Translation of a for loop given to assembly lang
.data
temp dword ?
.code
    main PROC
    mov eax,0
    mov ecx,5 		; outer loop counter
    L1:
          mov temp,ecx 
          mov ecx,3 		; inner loop counter
    L2:
          mov eax, ecx
          add eax, temp
          loop L2     		; repeat inner loop
          mov ecx, temp		      
    loop L1 		                ; repeat outer loop



	INVOKE ExitProcess, 0
main ENDP
END main