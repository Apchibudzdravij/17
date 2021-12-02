.586

.MODEL FLAT, STDCALL
includelib kernel32.lib

ExitProcess PROTO : DWORD

.STACK 8192

.CONST

.DATA

array dword 12, 51, 6, 89, 4, 7, 13, 10, 78, 123

.CODE

getmin PROC x : DWORD, y : DWORD
START:
	mov esi, x
	mov ecx, 0
	mov eax, [esi]
	mov edx, 0
lup:
	mov ebx, [esi + edx]
	cmp eax, ebx
	ja less
	jb more
	je more
less:
	mov eax, ebx
more:
	inc ecx
	add edx, 4
	cmp ecx, y
	je afterLoop
	jmp lup
afterLoop:
	ret
getmin ENDP

main PROC
	invoke getmin, offset array, 10
	push 0
	call ExitProcess
main ENDP
end main