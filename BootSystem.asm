; Internal DB
SECTION .DATA
	hello:     db 'Hello world!',10
	helloLen:  equ $-hello

SECTION .TEXT
	GLOBAL _start 

_start:
	mov eax,4            ; 'write' system call = 4
	mov ebx,1            ; Standard OUT
	mov ecx,hello 
	mov edx,helloLen     ; Basicly STR.LEN
	int 80h              ; Execute kernel

	; Exit
	mov eax,1            ; Stop/Halt
	mov ebx,0            ; Set ERR code
	int 80h              ; Rerun kernel
  
