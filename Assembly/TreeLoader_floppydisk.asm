;플로피 디스크 부트로더
;nasm -o image.img floppydisk.asm
;qemu-system-x86_64 --fda image.img -m 1024

[ORG 0x00]
[BITS 16]

SECTION .text

jmp 0x07C0:START

START:
	mov ax, 0x07C0
	mov ds, ax
	mov ax, 0x0000
	mov ss, ax
	mov sp, 0xFFFE
	mov bp, 0XFFFE
	call CLEAR 
	mov si, 1
	
.TREELOOP
	mov di, 0
.TREELOOP2
	push 0x2
	mov ax, di
	add ax, 15
	sub ax, si
	push ax
	push si
	call PRINT
	add sp, 8
	
	add di, 1
	
	mov ax, si
	mov cx, 2
	mul cx
	sub ax,1

	cmp di, ax
	jge .EXITTREELOOP2
	jmp .TREELOOP2


.EXITTREELOOP2

add si, 1
cmp si, 15
jge .EXITTREELOOP1
jmp .TREELOOP

.EXITTREELOOP1

	mov si, 15
.LOOP
	mov di, 10
.LOOP2
	push 0x6
	push di
	push si
	call PRINT
	add sp, 8
	add di, 1
	cmp di, 20
	jge .EXITLOOP2
	jmp .LOOP2

.EXITLOOP2
add si, 1
cmp si, 20
jge .EXITLOOP1
jmp .LOOP

.EXITLOOP1

SECTOR:	db 0x02
HEADER:	db 0x00	
TRACK:	db 0x00

PRINT:
	push bp,
	mov bp, sp

	push es
	push si
	push di
	push ax
	push cx
	push dx	
	mov ax, 0xB800
	mov es, ax
	mov ax, word[bp + 4]
	mov si, 160
	mul si
	mov di, ax

	mov ax, word[bp + 6]
	
	mov si, 2
	mul si
	add di, ax

	mov si, word[bp+10]
	mov bl, byte[bp+8]
	mov byte[es:di], 42
	mov byte[es:di+1], bl
	pop dx
	pop cx
	pop ax
	pop di
	pop si
	pop es
	pop bp
	ret

CLEAR:
	push bp
	mov bp, sp
	
	push es
	push si
	push di
	push ax
	push cx
	push dx

	mov ax, 0xB800
	mov es, ax

.CLEARLOOP:
	mov byte[es:si],0
	mov byte[es:si+1], 0x0F
	add si,2
	
	cmp si,80*25*2
	jl .CLEARLOOP
	
	pop dx
	pop cx
	pop ax
	pop di
	pop si
	pop es
	pop bp
	ret	

times 510 - ($ - $$) db 0x00

db 0x55
db 0xAA ; Boot Signature