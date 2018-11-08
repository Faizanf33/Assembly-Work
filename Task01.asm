INCLUDE irvine32.inc

.data
	a DWORD 16
	b DWORD 32
	cc DWORD 64
	d DWORD 64
	ee DWORD ?
	eql BYTE ?
	ls BYTE ?
	gr BYTE ?
	count DWORD 0
	str1 BYTE "e is ", 0
	str2 BYTE " times less than d", 0
	
.code
	main proc
	
	xor eax, eax
	mov eax, a
	add eax, b
	mov ee, eax
	
	cmp eax, d
	je J1 
	ja J2
	jb J3
	
	jmp E1
	
	J1:
		mov eql, 1
		mov gr, 0
		mov ls, 0
		jmp E1
		
	J2:
		mov gr, 1
		mov ls, 0
		mov eql, 0
		jmp E1
	
	J3:
		mov ls, 1
		mov gr, 0
		mov eql, 0
		jmp E1
	
	E0:
		inc count
		inc eax
	
	E1:
		cmp eax, d
		jne E0
	
	mov edx, offset str1
	call writestring
	mov eax, count
	call writedec
	mov edx, offset str2
	call writestring
	call crlf
	exit
	main endp
end main