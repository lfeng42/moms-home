	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"main.c"
	.text
	.align	2
	.type	drawDog.part.1, %function
drawDog.part.1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #4]
	ldr	r4, [r0, #36]
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #44]
	ldr	ip, .L3
	mov	r3, r3, asl #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	mov	r1, r1, asl #3
	add	r2, r2, r4, lsl #4
	mov	r3, r3, lsr #23
	add	r0, ip, r1
	orr	r3, r3, #16384
	mov	r2, r2, asl #1
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	shadowOAM
	.size	drawDog.part.1, .-drawDog.part.1
	.align	2
	.global	initPlayer
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r2, #0
	mov	lr, #16
	mov	r4, #3
	mov	ip, #1
	ldr	r1, .L7
	ldr	r3, .L7+4
	ldr	r0, [r1]
	ldr	r1, [r3]
	ldr	r3, .L7+8
	add	r0, r0, #72
	add	r1, r1, #112
	str	r4, [r3, #48]
	str	lr, [r3, #24]
	str	lr, [r3, #28]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #72]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	vOff
	.word	hOff
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initDog
	.type	initDog, %function
initDog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L85
	ldr	r0, [r1, #12]
	sub	sp, sp, #100
	str	r0, [sp, #4]
	ldr	r0, [r1, #60]
	str	r0, [sp, #12]
	ldr	r0, [r1, #84]
	str	r0, [sp, #16]
	ldr	r0, [r1, #88]
	str	r0, [sp, #24]
	ldr	r0, [r1, #136]
	str	r0, [sp, #32]
	ldr	r0, [r1, #160]
	str	r0, [sp, #40]
	ldr	r0, [r1, #164]
	str	r0, [sp, #48]
	ldr	r0, [r1, #212]
	str	r0, [sp, #56]
	ldr	r0, [r1, #236]
	str	r0, [sp, #60]
	ldr	r0, [r1, #240]
	ldr	r2, [r1, #8]
	str	r0, [sp, #68]
	ldr	r0, [r1, #312]
	str	r2, [sp]
	ldr	r9, [r1, #288]
	str	r0, [sp, #76]
	mov	r5, r1
	ldr	r0, [r1, #316]
	mov	r2, r1
	ldr	r1, [r1, #364]
	str	r0, [sp, #84]
	str	r1, [sp, #92]
	str	r3, [sp, #88]
	str	r3, [sp, #80]
	mov	r8, r3
	str	r3, [sp, #72]
	mov	r10, r3
	str	r3, [sp, #64]
	mov	fp, r3
	str	r3, [sp, #52]
	str	r3, [sp, #44]
	str	r3, [sp, #36]
	str	r3, [sp, #28]
	str	r3, [sp, #20]
	mov	r7, r3
	str	r3, [sp, #8]
	mov	r6, r3
	mov	r1, r3
	mov	r0, #16
	mov	r4, #3
	mov	ip, #1
	b	.L10
.L14:
	add	r2, r2, #76
.L10:
	ands	lr, r3, #1
	str	r0, [r2, #24]
	str	r0, [r2, #28]
	str	r1, [r2, #32]
	str	r1, [r2, #44]
	str	r4, [r2, #48]
	strne	r1, [r2, #16]
	strne	ip, [r2, #20]
	bne	.L13
	cmp	r3, #0
	str	ip, [r2, #16]
	str	lr, [r2, #20]
	beq	.L84
.L13:
	cmp	r3, #1
	beq	.L31
	cmp	r3, #2
	beq	.L32
	cmp	r3, #3
	beq	.L33
	cmp	r3, #4
	beq	.L34
	add	r3, r3, #1
	cmp	r3, #6
	str	r3, [r2, #64]
	str	ip, [r2, #56]
	bne	.L14
	cmp	r6, #0
	ldrne	r3, [sp]
	strne	r3, [r5, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	ldrne	r3, [sp, #4]
	strne	r3, [r5, #12]
	cmp	r7, #0
	ldrne	r3, [sp, #12]
	strne	r3, [r5, #60]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	ldrne	r3, [sp, #16]
	strne	r3, [r5, #84]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	ldrne	r3, [sp, #24]
	strne	r3, [r5, #88]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	ldrne	r3, [sp, #32]
	strne	r3, [r5, #136]
	ldr	r3, [sp, #44]
	cmp	r3, #0
	ldrne	r3, [sp, #40]
	strne	r3, [r5, #160]
	ldr	r3, [sp, #52]
	mov	r1, #200
	mov	r2, #55
	cmp	r3, #0
	ldrne	r3, [sp, #48]
	strne	r3, [r5, #164]
	cmp	fp, #0
	ldrne	r3, [sp, #56]
	strne	r3, [r5, #212]
	ldr	r3, [sp, #64]
	cmp	r3, #0
	ldrne	r3, [sp, #60]
	strne	r3, [r5, #236]
	ldr	r3, [sp, #72]
	cmp	r3, #0
	ldrne	r3, [sp, #68]
	strne	r3, [r5, #240]
	ldr	r3, [sp, #80]
	cmp	r10, #0
	strne	r9, [r5, #288]
	cmp	r3, #0
	ldrne	r3, [sp, #76]
	strne	r3, [r5, #312]
	ldr	r3, [sp, #88]
	cmp	r3, #0
	ldrne	r3, [sp, #84]
	strne	r3, [r5, #316]
	cmp	r8, #0
	ldrne	r3, [sp, #92]
	strne	r3, [r5, #364]
	ldr	r3, .L85+4
	str	r1, [r5, #388]
	str	r2, [r5, #440]
	str	r3, [r5, #392]
	add	sp, sp, #100
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L84:
	mov	lr, #20
	str	lr, [sp, #12]
	mov	lr, #165
	mov	r7, #1
	str	lr, [sp, #4]
	mov	lr, #190
	mov	r6, r7
	str	r7, [sp, #8]
	str	lr, [sp]
.L12:
	add	r3, r3, #1
	str	r3, [r2, #64]
	str	ip, [r2, #56]
	b	.L14
.L34:
	mov	lr, #30
	mov	r8, #1
	str	lr, [sp, #92]
	add	lr, lr, #300
	str	lr, [sp, #84]
	add	lr, lr, #25
	str	r8, [sp, #88]
	str	r8, [sp, #80]
	str	lr, [sp, #76]
	b	.L12
.L33:
	mov	r10, #1
	mov	r9, #65
	ldr	lr, .L85+8
	str	r10, [sp, #72]
	str	r10, [sp, #64]
	str	r9, [sp, #60]
	str	lr, [sp, #68]
	b	.L12
.L32:
	mov	lr, #35
	str	lr, [sp, #56]
	mov	lr, #210
	mov	fp, #1
	str	lr, [sp, #48]
	add	lr, lr, #135
	str	fp, [sp, #52]
	str	fp, [sp, #44]
	str	lr, [sp, #40]
	b	.L12
.L31:
	mov	lr, #40
	str	lr, [sp, #32]
	mov	lr, #100
	str	lr, [sp, #24]
	mov	lr, #60
	str	r3, [sp, #36]
	str	r3, [sp, #28]
	str	r3, [sp, #20]
	str	lr, [sp, #16]
	b	.L12
.L86:
	.align	2
.L85:
	.word	dog
	.word	415
	.word	335
	.size	initDog, .-initDog
	.global	__aeabi_idivmod
	.align	2
	.global	initTrash
	.type	initTrash, %function
initTrash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #7
	ldr	r8, .L121
	mov	r9, r8
	sub	sp, sp, #12
	str	r3, [sp, #4]
	ldr	r5, .L121+4
	ldr	fp, .L121+8
	ldr	r7, .L121+12
	ldr	r6, .L121+16
.L92:
	mov	r3, #0
	str	r3, [fp]
	mov	r3, #8
	str	r3, [r5, #24]
	str	r3, [r5, #28]
.L89:
	mov	lr, pc
	bx	r7
	ldr	r10, [r5, #28]
	rsb	r1, r10, #512
	mov	lr, pc
	bx	r6
	add	r10, r1, r10
	mov	lr, pc
	bx	r7
	ldr	r4, [r5, #24]
	rsb	r1, r4, #512
	mov	lr, pc
	bx	r6
	mov	r0, r10, asl #9
	add	r1, r1, r4
	add	r3, r1, r0
	mov	r3, r3, asl #1
	ldrh	r3, [r8, r3]
	sub	r2, r0, #512
	add	lr, r1, r2
	cmp	r3, #0
	mov	lr, lr, asl #1
	beq	.L91
	ldrh	lr, [r9, lr]
	sub	ip, r1, #1
	add	r3, r2, ip
	cmp	lr, #0
	mov	r3, r3, asl #1
	beq	.L91
	ldrh	r3, [r9, r3]
	add	lr, r1, #1
	add	r2, r2, lr
	cmp	r3, #0
	mov	r2, r2, asl #1
	beq	.L91
	ldrh	r2, [r9, r2]
	add	r3, r0, lr
	cmp	r2, #0
	mov	r3, r3, asl #1
	beq	.L91
	ldrh	r3, [r9, r3]
	add	r2, r0, ip
	cmp	r3, #0
	mov	r2, r2, asl #1
	beq	.L91
	ldrh	r2, [r9, r2]
	add	r0, r0, #512
	add	r3, r1, r0
	cmp	r2, #0
	mov	r3, r3, asl #1
	beq	.L91
	ldrh	r3, [r9, r3]
	add	ip, ip, r0
	cmp	r3, #0
	mov	ip, ip, asl #1
	beq	.L91
	ldrh	r3, [r9, ip]
	add	lr, lr, r0
	cmp	r3, #0
	mov	lr, lr, asl #1
	beq	.L91
	ldrh	r3, [r9, lr]
	cmp	r3, #0
	beq	.L91
	mov	r3, #1
	str	r3, [fp]
.L90:
	ldr	r3, [sp, #4]
	str	r3, [r5, #64]
	add	r3, r3, #1
	str	r3, [sp, #4]
	cmp	r3, #19
	mov	r3, #1
	str	r10, [r5, #8]
	str	r1, [r5, #12]
	str	r3, [r5, #68]
	add	r5, r5, #76
	bne	.L92
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L91:
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L89
	b	.L90
.L122:
	.align	2
.L121:
	.word	collisionmapBitmap
	.word	trash
	.word	valid
	.word	rand
	.word	__aeabi_idivmod
	.size	initTrash, .-initTrash
	.align	2
	.global	initVase
	.type	initVase, %function
initVase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #19
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L157
	mov	r9, r8
	sub	sp, sp, #12
	str	r3, [sp, #4]
	ldr	r3, .L157+4
	ldr	r5, .L157+8
	str	r3, [sp]
	ldr	fp, .L157+12
	ldr	r7, .L157+16
	ldr	r6, .L157+20
.L128:
	mov	r3, #0
	mov	r2, #8
	str	r3, [fp]
	ldr	r3, [sp]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
.L125:
	mov	lr, pc
	bx	r7
	ldr	r10, [r5, #28]
	rsb	r1, r10, #512
	mov	lr, pc
	bx	r6
	add	r10, r1, r10
	mov	lr, pc
	bx	r7
	ldr	r4, [r5, #24]
	rsb	r1, r4, #512
	mov	lr, pc
	bx	r6
	mov	r0, r10, asl #9
	add	r1, r1, r4
	add	r3, r1, r0
	mov	r3, r3, asl #1
	ldrh	r3, [r8, r3]
	sub	r2, r0, #512
	add	lr, r1, r2
	cmp	r3, #0
	mov	lr, lr, asl #1
	beq	.L127
	ldrh	lr, [r9, lr]
	sub	ip, r1, #1
	add	r3, r2, ip
	cmp	lr, #0
	mov	r3, r3, asl #1
	beq	.L127
	ldrh	r3, [r9, r3]
	add	lr, r1, #1
	add	r2, r2, lr
	cmp	r3, #0
	mov	r2, r2, asl #1
	beq	.L127
	ldrh	r2, [r9, r2]
	add	r3, r0, lr
	cmp	r2, #0
	mov	r3, r3, asl #1
	beq	.L127
	ldrh	r3, [r9, r3]
	add	r2, r0, ip
	cmp	r3, #0
	mov	r2, r2, asl #1
	beq	.L127
	ldrh	r2, [r9, r2]
	add	r0, r0, #512
	add	r3, r1, r0
	cmp	r2, #0
	mov	r3, r3, asl #1
	beq	.L127
	ldrh	r3, [r9, r3]
	add	ip, ip, r0
	cmp	r3, #0
	mov	ip, ip, asl #1
	beq	.L127
	ldrh	r3, [r9, ip]
	add	lr, lr, r0
	cmp	r3, #0
	mov	lr, lr, asl #1
	beq	.L127
	ldrh	r3, [r9, lr]
	cmp	r3, #0
	beq	.L127
	mov	r3, #1
	str	r3, [fp]
.L126:
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	str	r2, [r3, #64]
	add	r2, r2, #1
	str	r2, [sp, #4]
	cmp	r2, #26
	mov	r2, #1
	str	r2, [r3, #68]
	mov	r2, #0
	str	r10, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #72]
	add	r3, r3, #76
	add	r5, r5, #76
	str	r3, [sp]
	bne	.L128
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L127:
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L125
	b	.L126
.L158:
	.align	2
.L157:
	.word	collisionmapBitmap
	.word	vase
	.word	trash
	.word	valid
	.word	rand
	.word	__aeabi_idivmod
	.size	initVase, .-initVase
	.align	2
	.global	initGame
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r8, #46
	mov	r7, #9
	mov	r2, #0
	mov	lr, #118
	mov	r0, #16
	mov	r1, #1
	mov	ip, #60
	mov	r6, #121
	mov	r5, #3
	mov	r4, #12
	ldr	r3, .L161
	str	r8, [r3]
	ldr	r3, .L161+4
	str	r7, [r3]
	ldr	r3, .L161+8
	str	r2, [r3]
	ldr	r3, .L161+12
	str	r2, [r3]
	ldr	r3, .L161+16
	str	r2, [r3]
	ldr	r3, .L161+20
	str	r2, [r3]
	ldr	r3, .L161+24
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #72]
	str	lr, [r3, #8]
	ldr	r2, .L161+28
	ldr	lr, .L161+32
	str	r6, [r3, #12]
	str	r5, [r3, #48]
	str	r4, [lr]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r2]
	bl	initDog
	bl	initTrash
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	initVase
.L162:
	.align	2
.L161:
	.word	vOff
	.word	hOff
	.word	test
	.word	done
	.word	totalFrames
	.word	collided
	.word	player
	.word	timeRemaining
	.word	trashRemaining
	.size	initGame, .-initGame
	.align	2
	.global	updateVase
	.type	updateVase, %function
updateVase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r3, [r0, #68]
	cmp	r3, #0
	sub	sp, sp, #20
	mov	r4, r0
	streq	r3, [r0, #52]
	beq	.L167
	ldr	r3, [r0]
	cmp	r3, #160
	bls	.L175
.L165:
	mov	r3, #1
	str	r3, [r4, #52]
.L167:
	ldr	r2, .L176
	ldr	r3, .L176+4
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #12]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	stmia	r4, {r2, r3}
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L175:
	ldr	r3, [r0, #4]
	cmp	r3, #240
	bhi	.L165
	mov	r3, #0
	ldr	r2, .L176+8
	ldrh	r2, [r2, #48]
	tst	r2, #512
	str	r3, [r0, #52]
	beq	.L167
	ldr	r5, .L176+12
	ldr	r6, [r5, #72]
	cmp	r6, #0
	bne	.L167
	ldr	lr, [r5, #24]
	ldr	ip, [r5, #28]
	add	r0, r4, #8
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r5, #12]
	ldr	ip, [r5, #8]
	ldr	r7, .L176+16
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r4, #52]
	strne	r3, [r4, #72]
	strne	r3, [r5, #72]
	strne	r6, [r4, #68]
	b	.L167
.L177:
	.align	2
.L176:
	.word	vOff
	.word	hOff
	.word	67109120
	.word	player
	.word	collision
	.size	updateVase, .-updateVase
	.global	__aeabi_idiv
	.align	2
	.global	animatePlayer
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #4
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L192
	ldr	r7, [r4, #36]
	ldr	r1, [r4, #16]
	ldr	r3, .L192+4
	str	r2, [r4, #36]
	mov	r0, #10
	str	r7, [r4, #40]
	mov	lr, pc
	bx	r3
	ldr	r5, [r4, #32]
	mov	r1, r0
	ldr	r6, .L192+8
	mov	r0, r5
	mov	lr, pc
	bx	r6
	cmp	r1, #0
	bne	.L179
	add	r0, r4, #44
	ldmia	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #44]
.L179:
	ldr	r3, .L192+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #36]
	ldr	r3, .L192+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #36]
	ldr	r3, .L192+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L182
	mov	r2, #2
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	beq	.L185
.L184:
	add	r5, r5, #1
	str	r5, [r4, #32]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L182:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L191
.L185:
	mov	r3, #3
	str	r3, [r4, #36]
	b	.L184
.L191:
	ldr	r3, [r4, #36]
	cmp	r3, #4
	ldr	r3, .L192
	bne	.L184
	mov	r2, #0
	str	r7, [r3, #36]
	str	r2, [r3, #44]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L193:
	.align	2
.L192:
	.word	player
	.word	__aeabi_idiv
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	updatePlayer
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L304
	ldrh	r3, [r3, #48]
	tst	r3, #1
	moveq	r3, #2
	movne	r3, #1
	moveq	ip, r3
	movne	ip, r3
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldreq	r5, .L304+4
	ldrne	r5, .L304+4
	ldr	r1, [r5, #12]
	ldr	r6, [r5, #24]
	ldr	r0, [r5, #8]
	add	r4, r1, r6
	sub	r9, r4, #1
	rsb	r2, ip, r0
	str	r3, [r5, #16]
	str	r3, [r5, #20]
	ldr	lr, .L304+8
	add	r3, r9, r2, lsl #9
	mov	r3, r3, asl #1
	ldrh	r3, [lr, r3]
	cmp	r3, #0
	sub	sp, sp, #20
	ldr	r3, .L304+4
	beq	.L290
	ldr	r7, .L304
	ldrh	r8, [r7, #48]
	tst	r8, #64
	bne	.L198
	ldr	r10, [r3]
	cmp	r10, #80
	bgt	.L298
	ldrh	r3, [r7, #48]
	tst	r3, #64
	beq	.L227
	ldrh	r3, [r7, #48]
.L288:
	ldr	r8, .L304+12
.L203:
	ldr	r3, .L304
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L197
	ldr	r3, [r8]
	rsbs	r3, r3, #1
	movcc	r3, #0
	cmp	r0, #0
	movle	r3, #0
	cmp	r3, #0
	ldrne	r3, [r5]
	rsbne	r3, ip, r3
	movne	r0, r2
	strne	r2, [r5, #8]
	strne	r3, [r5]
	b	.L197
.L198:
	ldrh	r8, [r7, #48]
	tst	r8, #64
	bne	.L200
	ldr	r10, [r3]
	cmp	r10, #80
	ble	.L227
	ldrh	r3, [r7, #48]
	tst	r3, #64
	bne	.L288
.L229:
	cmp	r0, #0
	movgt	r0, r2
	rsbgt	r10, ip, r10
	strgt	r10, [r5]
	strgt	r2, [r5, #8]
.L290:
	ldr	r8, .L304+12
.L197:
	ldr	r7, [r5, #28]
	add	r3, r7, r0
	add	r2, r3, ip
	sub	r2, r2, #1
	add	r2, r9, r2, lsl #9
	mov	r2, r2, asl #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	ldr	r2, .L304+4
	beq	.L204
	ldr	r10, .L304
	ldrh	r9, [r10, #48]
	tst	r9, #128
	bne	.L205
	ldr	r9, [r2]
	cmp	r9, #79
	ble	.L291
	ldrh	r2, [r10, #48]
	tst	r2, #128
	bne	.L207
.L208:
	ldr	r2, .L304
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L209
.L230:
	ldr	r2, [r8]
	cmp	r2, #352
	ldr	r10, .L304+12
	bge	.L209
	add	r2, r2, ip
	cmp	r0, #512
	str	r2, [r10]
	bge	.L204
	add	r0, r0, ip
	add	r9, r9, ip
	str	r0, [r5, #8]
	str	r9, [r5]
	add	r3, r7, r0
.L204:
	sub	r3, r3, #1
	mov	r3, r3, asl #9
	rsb	r7, ip, r1
	add	r2, r3, r7
	mov	r2, r2, asl #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	beq	.L295
	ldr	r2, .L304
	ldrh	r9, [r2, #48]
	tst	r9, #32
	bne	.L211
	ldr	r10, [r5, #4]
	cmp	r10, #120
	ldr	r9, .L304+4
	bgt	.L299
	ldrh	r9, [r2, #48]
	tst	r9, #32
	beq	.L231
	ldrh	r2, [r2, #48]
.L293:
	ldr	r9, .L304+16
.L216:
	ldr	r2, .L304
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L210
	ldr	r2, [r9]
	rsbs	r2, r2, #1
	movcc	r2, #0
	cmp	r1, #0
	movle	r2, #0
	cmp	r2, #0
	beq	.L210
	ldr	r2, [r5, #4]
	rsb	r2, ip, r2
	mov	r1, r7
	str	r7, [r5, #12]
	str	r2, [r5, #4]
	add	r4, r6, r7
	b	.L210
.L211:
	ldrh	r9, [r2, #48]
	tst	r9, #32
	bne	.L213
	ldr	r10, [r5, #4]
	cmp	r10, #120
	ble	.L231
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L293
.L233:
	cmp	r1, #0
	movgt	r1, r7
	rsbgt	r10, ip, r10
	strgt	r10, [r5, #4]
	strgt	r7, [r5, #12]
	addgt	r4, r6, r7
.L295:
	ldr	r9, .L304+16
.L210:
	add	r3, r4, r3
	add	r3, r3, ip
	add	lr, lr, r3, lsl #1
	ldrh	r3, [lr, #-2]
	cmp	r3, #0
	beq	.L217
	ldr	r2, .L304
	ldrh	r3, [r2, #48]
	tst	r3, #16
	bne	.L218
	ldr	r3, [r5, #4]
	cmp	r3, #119
	ldr	lr, .L304+4
	ble	.L300
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L220
.L221:
	ldr	r2, .L304
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L222
.L234:
	ldr	r2, [r9]
	cmp	r2, #272
	ldr	lr, .L304+16
	bge	.L222
	add	r2, r2, ip
	cmp	r1, #512
	str	r2, [lr]
	addlt	r1, r1, ip
	addlt	r3, r3, ip
	strlt	r1, [r5, #12]
	strlt	r3, [r5, #4]
.L217:
	mov	fp, #50
	mov	r10, #20
	ldr	r4, .L304+20
	ldr	r7, .L304+4
	add	r6, r4, #532
.L226:
	ldr	r3, [r4, #72]
	cmp	r3, #1
	beq	.L301
.L223:
	add	r4, r4, #76
	cmp	r6, r4
	bne	.L226
	ldr	r2, [r8]
	ldr	r3, [r9]
	rsb	r0, r2, r0
	rsb	r1, r3, r1
	stmia	r5, {r0, r1}
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L301:
	mov	ip, #125
	mov	lr, #133
	ldr	r3, [r5, #24]
	stmia	sp, {ip, lr}
	ldr	r2, [r5, #28]
	str	fp, [sp, #12]
	str	r10, [sp, #8]
	ldr	ip, .L304+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L224
.L225:
	mov	r3, #0
	ldr	r0, [r5, #8]
	str	r3, [r5, #72]
	ldr	r1, [r5, #12]
	b	.L223
.L205:
	ldrh	r9, [r10, #48]
	tst	r9, #128
	beq	.L302
.L207:
	ldr	r2, .L304
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L209
	ldr	r9, [r5]
	cmp	r9, #79
	bgt	.L230
.L209:
	ldr	r2, .L304
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L204
	ldr	r2, [r8]
	cmp	r2, #352
	bne	.L204
	rsb	r2, r7, #512
	cmp	r2, r0
	ble	.L204
	ldr	r3, [r5]
	add	r0, r0, ip
	add	r3, r3, ip
	str	r3, [r5]
	str	r0, [r5, #8]
	add	r3, r7, r0
	b	.L204
.L218:
	ldrh	r3, [r2, #48]
	tst	r3, #16
	beq	.L303
.L220:
	ldr	r3, .L304
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L222
	ldr	r3, [r5, #4]
	cmp	r3, #119
	bgt	.L234
.L222:
	ldr	r3, .L304
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L217
	ldr	r3, [r9]
	cmp	r3, #272
	bne	.L217
	rsb	r6, r6, #512
	cmp	r6, r1
	ldrgt	r3, [r5, #4]
	addgt	r1, r1, ip
	addgt	ip, r3, ip
	strgt	r1, [r5, #12]
	strgt	ip, [r5, #4]
	b	.L217
.L224:
	mov	r0, #428
	mov	ip, #175
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #12]
	stmib	sp, {r0, r10, fp}
	ldr	r0, [r7, #8]
	str	ip, [sp]
	ldr	ip, .L304+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L225
	mov	ip, #23
	ldr	lr, .L304+28
	add	r0, r7, #8
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldmia	r0, {r0, r1}
	str	ip, [sp, #8]
	str	fp, [sp, #12]
	stmia	sp, {r10, lr}
	ldr	ip, .L304+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L225
	add	r0, r7, #8
	ldmia	r0, {r0, r1}
	b	.L223
.L302:
	ldr	r9, [r2]
	cmp	r9, #79
	bgt	.L208
	cmp	r0, #512
	bge	.L204
.L291:
	add	r0, r0, ip
	add	r9, r9, ip
	str	r0, [r2, #8]
	add	r3, r7, r0
	str	r9, [r2]
	b	.L204
.L300:
	add	r1, r1, ip
	add	r3, r3, ip
	str	r1, [lr, #12]
	str	r3, [lr, #4]
	b	.L217
.L298:
	rsb	r10, ip, r10
	str	r10, [r3]
	str	r2, [r3, #8]
	mov	r0, r2
	b	.L290
.L299:
	rsb	r10, ip, r10
	str	r10, [r9, #4]
	str	r7, [r9, #12]
	add	r4, r6, r7
	mov	r1, r7
	b	.L295
.L213:
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L293
	ldr	r10, [r5, #4]
	cmp	r10, #120
	ble	.L293
	b	.L233
.L200:
	ldrh	r7, [r7, #48]
	tst	r7, #64
	bne	.L288
	ldr	r10, [r3]
	cmp	r10, #80
	ble	.L288
	b	.L229
.L303:
	ldr	r3, [r5, #4]
	cmp	r3, #119
	ldr	r2, .L304+4
	bgt	.L221
	cmp	r1, #512
	addlt	r1, r1, ip
	addlt	r3, r3, ip
	strlt	r1, [r2, #12]
	strlt	r3, [r2, #4]
	b	.L217
.L231:
	ldr	r9, .L304+16
	ldr	r2, [r9]
	cmp	r2, #0
	ble	.L215
	rsb	r2, ip, r2
	rsb	r10, ip, r10
	str	r2, [r9]
	str	r10, [r5, #4]
	str	r7, [r5, #12]
	add	r4, r6, r7
	mov	r1, r7
	b	.L210
.L227:
	ldr	r8, .L304+12
	ldr	r3, [r8]
	cmp	r3, #0
	ble	.L202
	rsb	r3, ip, r3
	rsb	r10, ip, r10
	str	r3, [r8]
	str	r10, [r5]
	str	r2, [r5, #8]
	mov	r0, r2
	b	.L197
.L215:
	ldr	r2, .L304
	ldrh	r2, [r2, #48]
	b	.L216
.L202:
	ldr	r3, .L304
	ldrh	r3, [r3, #48]
	b	.L203
.L305:
	.align	2
.L304:
	.word	67109120
	.word	player
	.word	collisionmapBitmap
	.word	vOff
	.word	hOff
	.word	vase
	.word	collision
	.word	346
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	animateDog
	.type	animateDog, %function
animateDog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L313
	ldr	r5, [r0, #32]
	smull	r1, r2, r3, r5
	mov	r3, r5, asr #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, asl #1
	mov	r4, r0
	bne	.L307
	ldr	r0, [r0, #44]
	ldr	r3, .L313+4
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L307:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	movlt	r3, #2
	strlt	r3, [r4, #36]
	blt	.L309
	movne	r3, #4
	strne	r3, [r4, #36]
.L309:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	movlt	r3, #8
	strlt	r3, [r4, #36]
	blt	.L311
	movne	r3, #6
	strne	r3, [r4, #36]
.L311:
	add	r5, r5, #1
	str	r5, [r4, #32]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L314:
	.align	2
.L313:
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animateDog, .-animateDog
	.align	2
	.global	drawPlayer
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L323
	ldr	r3, [r2, #72]
	cmp	r3, #0
	movne	ip, #4
	bne	.L316
	ldr	r3, .L323+4
	ldrh	r3, [r3, #48]
	tst	r3, #512
	moveq	ip, #6
	movne	ip, #2
.L316:
	ldr	r2, [r2, #52]
	cmp	r2, #0
	ldr	r0, .L323
	bne	.L322
	ldr	r3, [r0, #36]
	str	lr, [sp, #-4]!
	ldr	lr, [r0, #44]
	ldr	r1, [r0, #4]
	add	r2, r3, r3, lsl #1
	add	r3, r2, lr
	add	r3, r3, #4
	mov	r2, r1, asl #23
	add	r3, r3, ip, lsl #4
	ldr	r1, .L323+8
	ldrb	r0, [r0]	@ zero_extendqisi2
	mov	r2, r2, lsr #23
	mov	r3, r3, asl #1
	orr	r2, r2, #16384
	strh	r3, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L322:
	ldr	r2, .L323+8
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L324:
	.align	2
.L323:
	.word	player
	.word	67109120
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawDog
	.type	drawDog, %function
drawDog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #52]
	cmp	r2, #0
	beq	drawDog.part.1
.L329:
	mov	r1, #512
	ldr	r3, [r0, #64]
	ldr	r2, .L330
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L331:
	.align	2
.L330:
	.word	shadowOAM
	.size	drawDog, .-drawDog
	.align	2
	.global	drawTrash
	.type	drawTrash, %function
drawTrash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #52]
	cmp	r3, #0
	bne	.L333
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L333
	str	lr, [sp, #-4]!
	mov	lr, #70
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #4]
	ldr	ip, .L337
	ldrb	r0, [r0]	@ zero_extendqisi2
	mov	r3, r3, asl #3
	add	r1, ip, r3
	bic	r2, r2, #65024
	strh	lr, [r1, #4]	@ movhi
	strh	r0, [ip, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L333:
	ldr	r3, [r0, #64]
	ldr	r1, .L337
	mov	r3, r3, asl #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	strh	r2, [r1, r3]	@ movhi
	bx	lr
.L338:
	.align	2
.L337:
	.word	shadowOAM
	.size	drawTrash, .-drawTrash
	.align	2
	.global	drawVase
	.type	drawVase, %function
drawVase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #52]
	cmp	r3, #0
	bne	.L340
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L340
	str	lr, [sp, #-4]!
	mov	lr, #71
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #4]
	ldr	ip, .L344
	ldrb	r0, [r0]	@ zero_extendqisi2
	mov	r3, r3, asl #3
	add	r1, ip, r3
	bic	r2, r2, #65024
	strh	lr, [r1, #4]	@ movhi
	strh	r0, [ip, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L340:
	mov	r1, #512
	ldr	r3, [r0, #64]
	ldr	r2, .L344
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L345:
	.align	2
.L344:
	.word	shadowOAM
	.size	drawVase, .-drawVase
	.align	2
	.global	drawScore
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L350
	ldr	r2, .L350+4
	ldr	r3, [r3]
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	smull	r1, r0, r2, r3
	mov	r7, #24
	ldr	r6, .L350+8
	ldr	r5, .L350+12
	ldr	ip, [r6]
	ldr	lr, .L350+16
	smull	r1, r9, r2, ip
	ldr	r1, [r5]
	smull	r2, lr, r1, lr
	mov	r2, r3, asr #31
	rsb	r0, r2, r0, asr #2
	add	r8, r0, r0, lsl #2
	sub	r8, r3, r8, asl #1
	ldr	r3, .L350+20
	mov	r0, r0, asl #1
	strh	r0, [r3, #220]	@ movhi
	ldr	r0, .L350+24
	mov	r2, ip, asr #31
	strh	r0, [r3, #218]	@ movhi
	add	r0, r0, #15
	rsb	r2, r2, r9, asr #2
	strh	r0, [r3, #226]	@ movhi
	add	r0, r0, #196
	strh	r0, [r3, #234]	@ movhi
	mov	r0, r2, asl #1
	add	r2, r2, r2, lsl #2
	strh	r0, [r3, #236]	@ movhi
	add	lr, lr, r1
	mov	r0, r1, asr #31
	sub	r2, ip, r2, asl #1
	mov	r2, r2, asl #1
	rsb	lr, r0, lr, asr #5
	ldr	r0, .L350+28
	strh	r2, [r3, #244]	@ movhi
	ldr	r2, .L350+32
	strh	r0, [r3, #250]	@ movhi
	rsb	lr, lr, lr, lsl #4
	add	r0, r3, #256
	cmp	r1, lr, asl #2
	strh	r2, [r0, #2]	@ movhi
	ldr	r2, .L350+36
	mov	r4, #140
	mov	r10, #20
	subeq	ip, ip, #1
	strh	r2, [r3, #248]	@ movhi
	strh	r2, [r0]	@ movhi
	streq	ip, [r6]
	add	r2, r3, #260
	cmp	ip, #0
	strh	r7, [r2]	@ movhi
	movlt	r2, #1
	ldr	lr, .L350+40
	mov	r8, r8, asl #1
	strh	r8, [r3, #228]	@ movhi
	strh	r10, [r3, #252]	@ movhi
	strh	r4, [r3, #216]	@ movhi
	strh	r4, [r3, #224]	@ movhi
	strh	lr, [r3, #242]	@ movhi
	strh	r4, [r3, #232]	@ movhi
	strh	r4, [r3, #240]	@ movhi
	ldrlt	r3, .L350+44
	add	r1, r1, #1
	strlt	r2, [r3]
	str	r1, [r5]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L351:
	.align	2
.L350:
	.word	trashRemaining
	.word	1717986919
	.word	timeRemaining
	.word	totalFrames
	.word	-2004318071
	.word	shadowOAM
	.word	16385
	.word	-32620
	.word	-32588
	.word	16524
	.word	16608
	.word	done
	.size	drawScore, .-drawScore
	.align	2
	.global	drawGame
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L368
	bl	drawScore
	mov	r7, #512
	bl	drawPlayer
	ldr	r5, .L368+4
	add	r6, r4, #456
	b	.L355
.L366:
	ldr	r3, [r4, #64]
	add	r4, r4, #76
	mov	r3, r3, asl #3
	cmp	r4, r6
	strh	r7, [r5, r3]	@ movhi
	beq	.L365
.L355:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L366
	mov	r0, r4
	add	r4, r4, #76
	bl	drawDog.part.1
	cmp	r4, r6
	bne	.L355
.L365:
	ldr	r4, .L368+8
	add	r6, r4, #912
.L356:
	mov	r0, r4
	add	r4, r4, #76
	bl	drawTrash
	cmp	r4, r6
	bne	.L356
	ldr	r3, .L368+12
	mov	r0, #512
	mov	r4, #71
	add	r1, r3, #532
	b	.L360
.L357:
	ldr	r2, [r3, #64]
	add	r3, r3, #76
	mov	r2, r2, asl #3
	cmp	r1, r3
	strh	r0, [r5, r2]	@ movhi
	beq	.L367
.L360:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	bne	.L357
	ldr	r2, [r3, #68]
	cmp	r2, #0
	beq	.L357
	ldr	r2, [r3, #64]
	ldr	ip, [r3, #4]
	ldrb	r6, [r3]	@ zero_extendqisi2
	mov	r2, r2, asl #3
	add	r3, r3, #76
	add	lr, r5, r2
	bic	ip, ip, #65024
	cmp	r1, r3
	strh	r6, [r5, r2]	@ movhi
	strh	r4, [lr, #4]	@ movhi
	strh	ip, [lr, #2]	@ movhi
	bne	.L360
.L367:
	ldr	r3, .L368+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L368+20
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L368+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L368+24
	ldrh	r1, [r2]
	ldr	r2, .L368+28
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L369:
	.align	2
.L368:
	.word	dog
	.word	shadowOAM
	.word	trash
	.word	vase
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	setupSounds
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L371
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L372:
	.align	2
.L371:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r2, .L375+8
	ldr	r2, [r2]
	ldr	r7, .L375+12
	mov	r8, r1
	mov	r9, r0
	mov	r10, r3
	str	r5, [r2, #20]
	mov	r1, r0
	ldr	r2, .L375+16
	mov	r3, #910163968
	mov	r0, #1
	ldr	r4, .L375+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #2]	@ movhi
	mov	r1, r6
	ldr	r3, .L375+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r3, #128
	rsb	r0, r0, #0
	ldr	r4, .L375+28
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	strh	r0, [r7]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	mov	r0, r8
	ldr	r7, .L375+32
	str	r9, [r4]
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	mov	lr, pc
	bx	r7
	ldr	r8, .L375+36
	adr	r3, .L375
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L375+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L375+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r0, [r4, #20]
	str	r5, [r4, #28]
	str	r10, [r4, #16]
	str	r3, [r4, #12]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L376:
	.align	3
.L375:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109024
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r2, .L379+8
	ldr	r2, [r2]
	ldr	r7, .L379+12
	mov	r8, r1
	mov	r9, r0
	mov	r10, r3
	str	r5, [r2, #32]
	mov	r1, r0
	ldr	r2, .L379+16
	mov	r3, #910163968
	mov	r0, #2
	ldr	r4, .L379+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #6]	@ movhi
	mov	r1, r6
	ldr	r3, .L379+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r3, #128
	rsb	r0, r0, #0
	ldr	r4, .L379+28
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	strh	r0, [r7, #4]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	mov	r0, r8
	ldr	r7, .L379+32
	str	r9, [r4]
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	mov	lr, pc
	bx	r7
	ldr	r8, .L379+36
	adr	r3, .L379
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L379+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L379+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r0, [r4, #20]
	str	r5, [r4, #28]
	str	r10, [r4, #16]
	str	r3, [r4, #12]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L380:
	.align	3
.L379:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109028
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	updateDog
	.type	updateDog, %function
updateDog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r3, [r0]
	cmp	r3, #160
	sub	sp, sp, #20
	mov	r4, r0
	bhi	.L382
	ldr	r3, [r0, #4]
	cmp	r3, #240
	movls	r3, #0
	strls	r3, [r0, #52]
	bhi	.L382
	ldr	r2, [r4, #20]
	cmp	r2, #0
	beq	.L385
.L409:
	ldr	r3, [r4, #56]
	ldr	r1, [r4, #60]
	add	r3, r2, r3
	cmp	r3, #0
	cmpne	r1, r3
	rsbeq	r2, r2, #0
	streq	r2, [r4, #20]
	ldr	r2, .L410
	ldr	r1, .L410+4
	ldr	ip, [r2]
	ldr	r2, [r4, #12]
	ldr	r0, [r1]
	ldr	r1, [r4, #8]
	rsb	r2, ip, r2
	str	r3, [r4, #56]
	add	r3, r2, r3
	rsb	r2, r0, r1
	stmia	r4, {r2, r3}
.L387:
	ldr	r6, .L410+8
	ldrh	r3, [r6, #48]
	tst	r3, #512
	ldr	r5, .L410+12
	beq	.L389
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L408
.L389:
	mov	r3, #0
	str	r3, [r5]
.L391:
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	animateDog
.L382:
	mov	r3, #1
	ldr	r2, [r4, #20]
	cmp	r2, #0
	str	r3, [r4, #52]
	bne	.L409
.L385:
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #56]
	ldr	r1, [r4, #60]
	add	r3, r2, r3
	cmp	r3, #0
	cmpne	r1, r3
	rsbeq	r2, r2, #0
	streq	r2, [r4, #16]
	ldr	r2, .L410+4
	ldr	r1, .L410
	ldr	ip, [r2]
	ldr	r2, [r4, #8]
	ldr	r0, [r1]
	ldr	r1, [r4, #12]
	rsb	r2, ip, r2
	str	r3, [r4, #56]
	add	r3, r2, r3
	rsb	r2, r0, r1
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L387
.L408:
	ldr	lr, [r4, #24]
	ldr	r0, .L410+16
	ldr	ip, [r4, #28]
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r7, .L410+20
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L389
	ldrh	r3, [r6, #48]
	tst	r3, #512
	beq	.L389
	mov	r0, #1
	ldr	r2, .L410+24
	ldr	r3, .L410+28
	ldr	r2, [r2]
	smull	ip, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, asl r0
	ldreq	r2, .L410+32
	ldreq	r3, [r2]
	subeq	r3, r3, #5
	streq	r3, [r2]
	str	r0, [r5]
	mov	r3, #0
	ldr	r2, .L410+36
	ldr	r1, .L410+40
	ldr	r0, .L410+44
	bl	playSoundB
	b	.L391
.L411:
	.align	2
.L410:
	.word	hOff
	.word	vOff
	.word	67109120
	.word	collided
	.word	player
	.word	collision
	.word	totalFrames
	.word	1717986919
	.word	timeRemaining
	.word	11025
	.word	24765
	.word	bark
	.size	updateDog, .-updateDog
	.align	2
	.global	updateTrash
	.type	updateTrash, %function
updateTrash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r0, #68]
	cmp	r3, #0
	sub	sp, sp, #16
	mov	r4, r0
	streq	r3, [r0, #52]
	beq	.L416
	ldr	r3, [r0]
	cmp	r3, #160
	bls	.L425
.L414:
	mov	r3, #1
	str	r3, [r4, #52]
.L416:
	ldr	r2, .L426
	ldr	r3, .L426+4
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #12]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	stmia	r4, {r2, r3}
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L425:
	ldr	r3, [r0, #4]
	cmp	r3, #240
	bhi	.L414
	mov	r3, #0
	ldr	ip, .L426+8
	ldr	r5, [ip, #72]
	cmp	r5, r3
	str	r3, [r0, #52]
	bne	.L416
	ldr	lr, [ip, #24]
	add	r0, r4, #8
	ldr	r6, [ip, #28]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	str	r6, [sp, #8]
	stmia	sp, {ip, lr}
	ldr	r6, .L426+12
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L416
	mov	r2, #1
	ldr	lr, .L426+16
	ldr	ip, [lr]
	str	r2, [r4, #52]
	sub	ip, ip, #1
	str	r5, [r4, #68]
	mov	r3, r5
	ldr	r2, .L426+20
	ldr	r1, .L426+24
	ldr	r0, .L426+28
	str	ip, [lr]
	bl	playSoundB
	b	.L416
.L427:
	.align	2
.L426:
	.word	vOff
	.word	hOff
	.word	player
	.word	collision
	.word	trashRemaining
	.word	11025
	.word	4896
	.word	rustle
	.size	updateTrash, .-updateTrash
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	bl	updatePlayer
	ldr	r4, .L436
	add	r5, r4, #456
.L429:
	mov	r0, r4
	add	r4, r4, #76
	bl	updateDog
	cmp	r5, r4
	bne	.L429
	ldr	r4, .L436+4
	add	r5, r4, #912
.L430:
	mov	r0, r4
	add	r4, r4, #76
	bl	updateTrash
	cmp	r5, r4
	bne	.L430
	ldr	r4, .L436+8
	add	r5, r4, #532
.L431:
	mov	r0, r4
	add	r4, r4, #76
	bl	updateVase
	cmp	r5, r4
	bne	.L431
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L437:
	.align	2
.L436:
	.word	dog
	.word	trash
	.word	vase
	.size	updateGame, .-updateGame
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L455
	ldrh	r1, [r3, #2]
	tst	r1, #1
	strh	r2, [r3, #8]	@ movhi
	beq	.L452
	ldr	r3, .L455+4
	ldr	r2, [r3, #12]
	cmp	r2, #0
	ldr	r2, [r3, #28]
	addne	r2, r2, #1
	stmfd	sp!, {r4, lr}
	strne	r2, [r3, #28]
	ldr	r3, [r3, #20]
	cmp	r3, r2
	ldr	r0, .L455+4
	bge	.L442
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bne	.L453
	ldr	r1, .L455+8
	ldr	r2, .L455+12
	ldr	r1, [r1]
	str	r3, [r0, #12]
	str	r3, [r1, #20]
	strh	r3, [r2, #2]	@ movhi
.L442:
	ldr	r3, .L455+16
	ldr	r2, [r3, #12]
	cmp	r2, #0
	ldr	r2, [r3, #28]
	addne	r2, r2, #1
	strne	r2, [r3, #28]
	ldr	r3, [r3, #20]
	cmp	r3, r2
	ldr	r0, .L455+16
	bge	.L446
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bne	.L454
	ldr	r1, .L455+8
	ldr	r2, .L455+12
	ldr	r1, [r1]
	str	r3, [r0, #12]
	str	r3, [r1, #32]
	strh	r3, [r2, #6]	@ movhi
.L446:
	mov	r2, #1
	ldr	r3, .L455
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #1
	ldr	r3, .L455
	ldmfd	sp!, {r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L452:
	mov	r2, #1
	ldr	r3, .L455
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L454:
	ldmia	r0, {r0, r1, r2}
	bl	playSoundB
	b	.L446
.L453:
	ldmia	r0, {r0, r1, r2}
	bl	playSoundA
	b	.L442
.L456:
	.align	2
.L455:
	.word	67109376
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L458
	ldr	r0, .L458+4
	ldr	r1, .L458+8
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L459:
	.align	2
.L458:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L461
	ldr	ip, .L461+4
	ldr	r0, .L461+8
	strh	r1, [r2, #2]	@ movhi
	str	r3, [ip, #12]
	strh	r1, [r2, #6]	@ movhi
	str	r3, [r0, #12]
	bx	lr
.L462:
	.align	2
.L461:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L464
	ldr	ip, .L464+4
	ldr	r1, [r2]
	ldr	r0, .L464+8
	ldr	r2, .L464+12
	str	r3, [r1, #20]
	str	r3, [ip, #12]
	str	r3, [r1, #32]
	str	r3, [r0, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L465:
	.align	2
.L464:
	.word	dma
	.word	soundA
	.word	soundB
	.word	67109120
	.size	stopSound, .-stopSound
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	stmfd	sp!, {r4, lr}
	mov	r4, #1
	ldr	r3, .L468
	ldrh	r1, [r0, #4]
	ldrh	r2, [r3]
	ldr	lr, .L468+4
	ldr	ip, .L468+8
	orr	r2, r2, r4
	orr	r1, r1, #8
	strh	r1, [r0, #4]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	str	lr, [ip, #4092]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L469:
	.align	2
.L468:
	.word	67109376
	.word	interruptHandler
	.word	50360320
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	goToStart
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L472
	mov	lr, pc
	bx	r3
	ldr	r0, .L472+4
	ldr	r3, .L472+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L472+12
	ldr	r3, .L472+16
	mov	r2, #100663296
	ldr	r1, .L472+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L472+24
	ldr	r1, .L472+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #0
	mov	r0, #8064
	mov	r3, #256
	strh	r0, [r2, #8]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #1
	strh	r1, [r2, #18]	@ movhi
	ldr	r0, .L472+32
	ldr	r2, .L472+36
	ldr	r1, .L472+40
	bl	playSoundA
	ldr	r3, .L472+44
	ldr	r2, .L472+48
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L473:
	.align	2
.L472:
	.word	waitForVBlank
	.word	startPal
	.word	loadPalette
	.word	DMANow
	.word	9504
	.word	startTiles
	.word	100726784
	.word	startMap
	.word	startsound
	.word	11025
	.word	1166688
	.word	state
	.word	start
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	goToStart
	.size	initialize, .-initialize
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r7, fp, lr}
	ldr	r3, .L478
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	fp, #1	@ movhi
	ldr	r10, .L478+4
	ldr	r9, .L478+8
	ldr	r6, .L478+12
	ldr	r8, .L478+16
	ldr	r7, .L478+20
	ldr	r5, .L478+24
.L476:
	mov	lr, #128
	mov	ip, #0
	ldrh	r3, [r6]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r7, #48]
	strh	r3, [r6]	@ movhi
	ldrh	r2, [r5]
	ldrh	r3, [r4, #4]
	ldr	r1, .L478+28
	orr	r2, r2, #1
	orr	r3, r3, #8
	str	r10, [r1, #4092]
	strh	fp, [r5, #8]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	ldr	r3, .L478+32
	strh	lr, [r4, #132]	@ movhi
	strh	ip, [r4, #128]	@ movhi
	strh	r3, [r4, #130]	@ movhi
	ldr	ip, [r8]
	mov	lr, pc
	bx	ip
	b	.L476
.L479:
	.align	2
.L478:
	.word	goToStart
	.word	interruptHandler
	.word	oldButtons
	.word	buttons
	.word	state
	.word	67109120
	.word	67109376
	.word	50360320
	.word	-1266
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L487
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L487+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L480
	ldr	r3, .L487+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L486
.L480:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L486:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L488:
	.align	2
.L487:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	win, .-win
	.align	2
	.global	goToInstr
	.type	goToInstr, %function
goToInstr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L492
	mov	lr, pc
	bx	r3
	ldr	r0, .L492+4
	ldr	r3, .L492+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L492+12
	mov	r3, #11264
	mov	r2, #100663296
	ldr	r1, .L492+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L492+20
	ldr	r1, .L492+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r4, #8064
	mov	lr, #256
	ldr	ip, .L492+28
	ldr	r1, .L492+32
	ldr	r0, .L492+36
	strh	r4, [r3, #8]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldmfd	sp!, {r4, lr}
	strh	r2, [r3, #18]	@ movhi
	str	r2, [ip]
	str	r0, [r1]
	bx	lr
.L493:
	.align	2
.L492:
	.word	waitForVBlank
	.word	instructPal
	.word	loadPalette
	.word	DMANow
	.word	instructTiles
	.word	100726784
	.word	instructMap
	.word	seed
	.word	state
	.word	instr
	.size	goToInstr, .-goToInstr
	.align	2
	.global	start
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L501
	ldr	r3, [r2]
	stmfd	sp!, {r4, lr}
	add	r3, r3, #1
	ldr	r1, .L501+4
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	ldr	r3, .L501+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L494
	ldr	r3, .L501+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L500
.L494:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L500:
	ldmfd	sp!, {r4, lr}
	b	goToInstr
.L502:
	.align	2
.L501:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	start, .-start
	.align	2
	.global	goToCtrl
	.type	goToCtrl, %function
goToCtrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L505
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r3, #768
	ldr	r0, .L505+4
	strh	r3, [r5]	@ movhi
	ldr	r3, .L505+8
	mov	lr, pc
	bx	r3
	mov	r2, #8064
	ldr	r4, .L505+12
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #7744
	mov	r2, #100663296
	ldr	r1, .L505+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L505+20
	ldr	r1, .L505+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L505+28
	mov	r3, #1824
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L505+32
	ldr	r2, .L505+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L505+40
	ldr	r1, .L505+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #0
	ldr	r1, .L505+48
	ldr	r3, .L505+52
	ldr	r2, .L505+56
	str	r0, [r1]
	str	r2, [r3]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L506:
	.align	2
.L505:
	.word	waitForVBlank
	.word	controlsPal
	.word	loadPalette
	.word	DMANow
	.word	controlsTiles
	.word	100726784
	.word	controlsMap
	.word	7556
	.word	seethruTiles
	.word	100679680
	.word	100722688
	.word	seethruMap
	.word	seed
	.word	state
	.word	ctrl
	.size	goToCtrl, .-goToCtrl
	.align	2
	.global	instr
	.type	instr, %function
instr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L519
	ldr	r3, [r2]
	stmfd	sp!, {r4, lr}
	add	r3, r3, #1
	ldr	r1, .L519+4
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	ldr	r3, .L519+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L508
	ldr	r2, .L519+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L517
.L508:
	tst	r3, #4
	beq	.L507
	ldr	r3, .L519+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L518
.L507:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L518:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L517:
	ldmfd	sp!, {r4, lr}
	b	goToCtrl
.L520:
	.align	2
.L519:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	instr, .-instr
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L523
	mov	lr, pc
	bx	r3
	ldr	r0, .L523+4
	ldr	r3, .L523+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L523+12
	ldr	r3, .L523+16
	mov	r2, #100663296
	ldr	r1, .L523+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L523+24
	ldr	r1, .L523+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #56320
	ldr	r3, .L523+32
	strh	r2, [r5, #8]	@ movhi
	ldrh	r2, [r3]
	ldr	r3, .L523+36
	strh	r2, [r5, #18]	@ movhi
	ldrh	r2, [r3]
	ldr	r1, .L523+40
	strh	r2, [r5, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L523+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L523+48
	ldr	r1, .L523+52
	mov	r0, #3
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L523+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L523+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L523+64
	ldr	r1, .L523+68
	ldr	r0, .L523+72
	bl	playSoundA
	mov	r1, #4352
	ldr	r3, .L523+76
	ldr	r2, .L523+80
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L524:
	.align	2
.L523:
	.word	waitForVBlank
	.word	gamemapPal
	.word	loadPalette
	.word	DMANow
	.word	5712
	.word	gamemapTiles
	.word	100720640
	.word	gamemapMap
	.word	vOff
	.word	hOff
	.word	spritesheetTiles
	.word	100728832
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	11025
	.word	115516
	.word	gamemusic
	.word	state
	.word	game
	.size	goToGame, .-goToGame
	.align	2
	.global	ctrl
	.type	ctrl, %function
ctrl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L537
	ldr	r3, [r4]
	ldr	r2, .L537+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L537+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L526
	ldr	r2, .L537+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L535
.L526:
	tst	r3, #4
	beq	.L525
	ldr	r3, .L537+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L536
.L525:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L536:
	ldmfd	sp!, {r4, lr}
	b	goToInstr
.L535:
	ldr	r0, [r4]
	ldr	r3, .L537+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldmfd	sp!, {r4, lr}
	b	initGame
.L538:
	.align	2
.L537:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
	.size	ctrl, .-ctrl
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L551
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L551+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L540
	ldr	r2, .L551+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L549
.L540:
	tst	r3, #4
	beq	.L539
	ldr	r3, .L551+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L550
.L539:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L550:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L549:
	bl	goToGame
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L551+12
	ldr	ip, .L551+16
	ldr	r0, .L551+20
	strh	r1, [r2, #2]	@ movhi
	ldmfd	sp!, {r4, lr}
	str	r3, [ip, #12]
	strh	r1, [r2, #6]	@ movhi
	str	r3, [r0, #12]
	bx	lr
.L552:
	.align	2
.L551:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pause, .-pause
	.align	2
	.global	goToPause
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #0
	ldr	r3, .L555
	mov	lr, pc
	bx	r3
	ldr	r3, .L555+4
	ldr	r1, .L555+8
	ldr	r2, .L555+12
	strh	r4, [r3, #2]	@ movhi
	ldr	r0, .L555+16
	strh	r4, [r3, #6]	@ movhi
	ldr	r3, .L555+20
	str	r4, [r1, #12]
	str	r4, [r2, #12]
	ldr	r5, .L555+24
	mov	lr, pc
	bx	r3
	mov	r3, #3392
	mov	r2, #100663296
	ldr	r1, .L555+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L555+32
	ldr	r1, .L555+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	mov	ip, #8064
	mov	r0, #256
	ldr	r2, .L555+40
	ldr	r1, .L555+44
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r4, [r3, #16]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	str	r1, [r2]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L556:
	.align	2
.L555:
	.word	waitForVBlank
	.word	67109120
	.word	soundA
	.word	soundB
	.word	pausePal
	.word	loadPalette
	.word	DMANow
	.word	pauseTiles
	.word	100726784
	.word	pauseMap
	.word	state
	.word	pause
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #0
	ldr	r3, .L559
	mov	lr, pc
	bx	r3
	ldr	r2, .L559+4
	ldr	r3, .L559+8
	ldr	r2, [r2]
	ldr	ip, .L559+12
	ldr	r1, .L559+16
	str	r4, [r2, #20]
	ldr	r0, .L559+20
	str	r4, [r2, #32]
	strh	r4, [r3, #2]	@ movhi
	ldr	r2, .L559+24
	strh	r4, [r3, #6]	@ movhi
	ldr	r5, .L559+28
	str	r4, [ip, #12]
	str	r4, [r1, #12]
	mov	lr, pc
	bx	r2
	mov	r3, #3744
	mov	r2, #100663296
	ldr	r1, .L559+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L559+36
	ldr	r1, .L559+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	mov	ip, #8064
	mov	r0, #256
	ldr	r2, .L559+44
	ldr	r1, .L559+48
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r4, [r3, #16]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	str	r1, [r2]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L560:
	.align	2
.L559:
	.word	waitForVBlank
	.word	dma
	.word	67109120
	.word	soundA
	.word	soundB
	.word	WinPal
	.word	loadPalette
	.word	DMANow
	.word	WinTiles
	.word	100726784
	.word	WinMap
	.word	state
	.word	win
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #0
	ldr	r3, .L563
	mov	lr, pc
	bx	r3
	ldr	r2, .L563+4
	ldr	r3, .L563+8
	ldr	r2, [r2]
	ldr	ip, .L563+12
	ldr	r1, .L563+16
	str	r4, [r2, #20]
	ldr	r0, .L563+20
	str	r4, [r2, #32]
	strh	r4, [r3, #2]	@ movhi
	ldr	r2, .L563+24
	strh	r4, [r3, #6]	@ movhi
	ldr	r5, .L563+28
	str	r4, [ip, #12]
	str	r4, [r1, #12]
	mov	lr, pc
	bx	r2
	mov	r3, #5056
	mov	r2, #100663296
	ldr	r1, .L563+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L563+36
	ldr	r1, .L563+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	mov	ip, #8064
	mov	r0, #256
	ldr	r2, .L563+44
	ldr	r1, .L563+48
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r4, [r3, #16]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	str	r1, [r2]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L564:
	.align	2
.L563:
	.word	waitForVBlank
	.word	dma
	.word	67109120
	.word	soundA
	.word	soundB
	.word	LosePal
	.word	loadPalette
	.word	DMANow
	.word	LoseTiles
	.word	100726784
	.word	LoseMap
	.word	state
	.word	lose
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	updateGame
	ldr	r3, .L576
	mov	lr, pc
	bx	r3
	bl	drawGame
	ldr	r3, .L576+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L566
	ldr	r3, .L576+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L573
.L566:
	ldr	r3, .L576+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L574
	ldr	r3, .L576+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L575
	ldmfd	sp!, {r4, lr}
	bx	lr
.L573:
	ldmfd	sp!, {r4, lr}
	b	goToPause
.L574:
	ldmfd	sp!, {r4, lr}
	b	goToWin
.L575:
	ldmfd	sp!, {r4, lr}
	b	goToLose
.L577:
	.align	2
.L576:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	trashRemaining
	.word	done
	.size	game, .-game
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	vase,532,4
	.comm	trash,912,4
	.comm	dog,456,4
	.comm	player,76,4
	.comm	collided,4,4
	.comm	totalFrames,4,4
	.comm	timeRemaining,4,4
	.comm	trashRemaining,4,4
	.comm	valid,4,4
	.comm	done,4,4
	.comm	test,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
