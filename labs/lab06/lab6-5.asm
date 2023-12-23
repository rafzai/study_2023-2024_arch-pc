%include 'in_out.asm'
SECTION .data
msg: DB 'Введите число: ',0
rem: DB 'f(x) = ',0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax, msg
call sprintLF

mov ecx, x
mov edx, 80
call sread

mov eax,x
call atoi
inc eax
mov ebx,10
mul ebx
sub eax,10
xor edx,edx
mov edi,eax

mov eax,rem
call sprint 
mov eax,edi
call iprintLF 

call quit 
