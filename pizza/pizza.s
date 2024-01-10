.global _start
.text

_start:

	#size prompt
	mov r0, #1
	ldr r1, =pizza1_prompt
	ldr r2, =p1plen
	mov r7, #4
	swi 0
	
	#read input
	mov r0, #0
	ldr r1, =pizza1
	ldr r2, =4
	mov r7, #3
	swi 0

	#second size prompt
	mov r0, #1
	ldr r1, =pizza2_prompt
	ldr r2, =p2plen
	mov r7, #4
	swi 0

	#second read
	mov r0, #0
	ldr r1, =pizza2
	ldr r2, =4
	mov r7, #3
	swi 0

	
	#price 1 prompt
	mov r0, #1
	ldr r1, =pizza1_price_prompt
	ldr r2, =p1pricelen
	mov r7, #4
	swi 0
	
	#read input
	mov r0, #0
	ldr r1, =p1price
	ldr r2, =4
	mov r7, #3
	swi 0

	#price 2 prompt
	mov r0, #1
	ldr r1, =pizza2_price_prompt
	ldr r2, =p2pricelen
	mov r7, #4
	swi 0

	#second read
	mov r0, #0
	ldr r1, =p2price
	ldr r2, =4
	mov r7, #3
	swi 0


	#exit code
	mov r7, #1
	swi 0

.data
pizza1_prompt:
	.asciz "Enter the diammeter of the first pizza: \n"
p1plen = .-pizza1_prompt

pizza2_prompt:
	.asciz "Enter the diammeter of the second pizza: \n"
p2plen = .-pizza2_prompt

pizza1_price_prompt:
	.asciz "Enter the price of the first pizza: \n"
p1pricelen = .-pizza1_price_prompt

pizza2_price_prompt:
	.asciz "Enter the price of the second pizza: \n"
p2pricelen = .-pizza2_price_prompt

pizza1:	.space 4
pizza2: .space 4
p1price: .space 4
p2price: .space 4

