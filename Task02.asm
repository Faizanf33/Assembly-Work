INCLUDE irvine32.inc

.data
	str1 BYTE "Enter an integer(0 - 100): ", 0
	warn1 BYTE " is not in range i.e (0 - 100)", 0
	a BYTE 'A', 0
	b BYTE 'B', 0
	cc BYTE 'C', 0
	d BYTE 'D', 0
	f BYTE 'F', 0
	
.code 
	main proc
	xor eax, eax
	mov edx, offset str1
	call writestring
	call readint
	
	cmp eax, 90	
	jae R1
	cmp eax, 80
	jae R2
	cmp eax, 70
	jae R3
	cmp eax, 60
	jae R4
	cmp eax, 0
	jae R5
	jb NEXT
	
	R1:
		cmp eax, 100
		ja NEXT
		mov al, a
		jmp LAST

	R2:
		mov al, b
		jmp LAST

	R3:
		mov al, cc
		jmp LAST
	
	R4:
		mov al, d
		jmp LAST

	R5:
		mov al, f
		jmp LAST

	NEXT:
		call writeint
		mov edx, offset warn1
		call writestring
		jmp CLS 
		
	LAST:
		call writechar

	CLS:
	call crlf
	exit
	main endp
end main