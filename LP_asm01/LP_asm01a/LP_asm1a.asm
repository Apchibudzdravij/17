.586

.MODEL FLAT, STDCALL

ExitProcess PROTO : DWORD

.STACK 8192

.CONST

.DATA

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

getmax PROC x : DWORD, y : DWORD
START:
	mov esi, x
	mov ecx, 0
	mov eax, [esi]
	mov edx, 0
lup:
	mov ebx, [esi + edx]
	cmp eax, ebx
	jb less
	ja more
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
getmax ENDP
end