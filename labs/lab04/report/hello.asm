SECTION .data
hello: DB 'Dzaki rafli',10

helloLen: EQU $-name
SECTION .text
GLOBAL _start
_start:
mov eax,4
mov ebx,1
mov ecx,name
mov edx,nameLen
int 80h
mov eax,1
mov ebx,0
int 80h
