
bootloader.elf:     file format elf32-littlenios2

Disassembly of section .init:

00000000 <_init>:
   0:	defffe04 	addi	sp,sp,-8
   4:	dfc00015 	stw	ra,0(sp)
   8:	df000115 	stw	fp,4(sp)
   c:	00000c80 	call	c8 <frame_dummy>
  10:	0003f340 	call	3f34 <__do_global_ctors_aux>
  14:	dfc00017 	ldw	ra,0(sp)
  18:	df000117 	ldw	fp,4(sp)
  1c:	dec00204 	addi	sp,sp,8
  20:	f800283a 	ret
Disassembly of section .text:

00000024 <_start>:
      24:	0001883a 	nop
      28:	00000006 	br	2c <_start+0x8>
      2c:	06800074 	movhi	gp,1
      30:	d6b15004 	addi	gp,gp,-15040
      34:	01000034 	movhi	r4,0
      38:	21020014 	ori	r4,r4,2048
      3c:	d9400017 	ldw	r5,0(sp)
      40:	d9800117 	ldw	r6,4(sp)
      44:	01c00034 	movhi	r7,0
      48:	39c00014 	ori	r7,r7,0
      4c:	defffe04 	addi	sp,sp,-8
      50:	02000034 	movhi	r8,0
      54:	420fe514 	ori	r8,r8,16276
      58:	da000015 	stw	r8,0(sp)
      5c:	d8800115 	stw	r2,4(sp)
      60:	dec00215 	stw	sp,8(sp)
      64:	0003d280 	call	3d28 <__uClibc_main>
      68:	00800014 	movui	r2,0
      6c:	00c00054 	movui	r3,1
      70:	003b683a 	trap

00000074 <__do_global_dtors_aux>:
      74:	d0a01003 	ldbu	r2,-32704(gp)
      78:	deffff04 	addi	sp,sp,-4
      7c:	dfc00015 	stw	ra,0(sp)
      80:	10000426 	beq	r2,zero,94 <__do_global_dtors_aux+0x20>
      84:	00000806 	br	a8 <__do_global_dtors_aux+0x34>
      88:	10800104 	addi	r2,r2,4
      8c:	d0a00515 	stw	r2,-32748(gp)
      90:	183ee83a 	callr	r3
      94:	d0a00517 	ldw	r2,-32748(gp)
      98:	10c00017 	ldw	r3,0(r2)
      9c:	183ffa1e 	bne	r3,zero,88 <__do_global_dtors_aux+0x14>
      a0:	00800044 	movi	r2,1
      a4:	d0a01005 	stb	r2,-32704(gp)
      a8:	dfc00017 	ldw	ra,0(sp)
      ac:	dec00104 	addi	sp,sp,4
      b0:	f800283a 	ret

000000b4 <call___do_global_dtors_aux>:
      b4:	deffff04 	addi	sp,sp,-4
      b8:	dfc00015 	stw	ra,0(sp)
      bc:	dfc00017 	ldw	ra,0(sp)
      c0:	dec00104 	addi	sp,sp,4
      c4:	f800283a 	ret

000000c8 <frame_dummy>:
      c8:	01000034 	movhi	r4,0
      cc:	21115304 	addi	r4,r4,17740
      d0:	20800017 	ldw	r2,0(r4)
      d4:	02000034 	movhi	r8,0
      d8:	42000004 	addi	r8,r8,0
      dc:	10000226 	beq	r2,zero,e8 <frame_dummy+0x20>
      e0:	40000126 	beq	r8,zero,e8 <frame_dummy+0x20>
      e4:	4000683a 	jmp	r8
      e8:	f800283a 	ret

000000ec <call_frame_dummy>:
      ec:	deffff04 	addi	sp,sp,-4
      f0:	dfc00015 	stw	ra,0(sp)
      f4:	dfc00017 	ldw	ra,0(sp)
      f8:	dec00104 	addi	sp,sp,4
      fc:	f800283a 	ret

00000100 <fail>:
     100:	21003fcc 	andi	r4,r4,255
     104:	2008913a 	slli	r4,r4,4
     108:	00bc0034 	movhi	r2,61440
     10c:	10800404 	addi	r2,r2,16
     110:	11000035 	stwio	r4,0(r2)
     114:	003fff06 	br	114 <fail+0x14>

00000118 <no_cache_cpy>:
     118:	28c000cc 	andi	r3,r5,3
     11c:	00800084 	movi	r2,2
     120:	30cdc83a 	sub	r6,r6,r3
     124:	200f883a 	mov	r7,r4
     128:	18801b26 	beq	r3,r2,198 <no_cache_cpy+0x80>
     12c:	10c0130e 	bge	r2,r3,17c <no_cache_cpy+0x64>
     130:	008000c4 	movi	r2,3
     134:	18801e26 	beq	r3,r2,1b0 <no_cache_cpy+0x98>
     138:	020000c4 	movi	r8,3
     13c:	3809883a 	mov	r4,r7
     140:	4180072e 	bgeu	r8,r6,160 <no_cache_cpy+0x48>
     144:	2007883a 	mov	r3,r4
     148:	21000104 	addi	r4,r4,4
     14c:	28800037 	ldwio	r2,0(r5)
     150:	31bfff04 	addi	r6,r6,-4
     154:	18800015 	stw	r2,0(r3)
     158:	29400104 	addi	r5,r5,4
     15c:	41bff936 	bltu	r8,r6,144 <no_cache_cpy+0x2c>
     160:	00800084 	movi	r2,2
     164:	200f883a 	mov	r7,r4
     168:	30801e26 	beq	r6,r2,1e4 <_begin+0x4>
     16c:	11801736 	bltu	r2,r6,1cc <no_cache_cpy+0xb4>
     170:	00800044 	movi	r2,1
     174:	30802026 	beq	r6,r2,1f8 <icache_init_loop+0xc>
     178:	f800283a 	ret
     17c:	00800044 	movi	r2,1
     180:	18bfed1e 	bne	r3,r2,138 <no_cache_cpy+0x20>
     184:	21c00044 	addi	r7,r4,1
     188:	28800027 	ldbio	r2,0(r5)
     18c:	20800005 	stb	r2,0(r4)
     190:	30cdc83a 	sub	r6,r6,r3
     194:	29400044 	addi	r5,r5,1
     198:	3807883a 	mov	r3,r7
     19c:	39c00044 	addi	r7,r7,1
     1a0:	28800027 	ldbio	r2,0(r5)
     1a4:	18800005 	stb	r2,0(r3)
     1a8:	29400044 	addi	r5,r5,1
     1ac:	31bfffc4 	addi	r6,r6,-1
     1b0:	3807883a 	mov	r3,r7
     1b4:	39c00044 	addi	r7,r7,1
     1b8:	28800027 	ldbio	r2,0(r5)
     1bc:	29400044 	addi	r5,r5,1
     1c0:	31bfffc4 	addi	r6,r6,-1
     1c4:	18800005 	stb	r2,0(r3)
     1c8:	003fdb06 	br	138 <no_cache_cpy+0x20>
     1cc:	008000c4 	movi	r2,3
     1d0:	30800b1e 	bne	r6,r2,200 <icache_init_loop+0x14>
     1d4:	21c00044 	addi	r7,r4,1
     1d8:	28800027 	ldbio	r2,0(r5)
     1dc:	20800005 	stb	r2,0(r4)
     1e0:	29400044 	addi	r5,r5,1
     1e4:	3807883a 	mov	r3,r7
     1e8:	39c00044 	addi	r7,r7,1
     1ec:	28800027 	ldbio	r2,0(r5)
     1f0:	18800005 	stb	r2,0(r3)
     1f4:	29400044 	addi	r5,r5,1
     1f8:	28800027 	ldbio	r2,0(r5)
     1fc:	38800005 	stb	r2,0(r7)
     200:	f800283a 	ret

00000204 <readSector>:
     204:	2008927a 	slli	r4,r4,9
     208:	01fa0034 	movhi	r7,59392
     20c:	39d08b04 	addi	r7,r7,16940
     210:	01ba0034 	movhi	r6,59392
     214:	31908c04 	addi	r6,r6,16944
     218:	01400444 	movi	r5,17
     21c:	00fa0034 	movhi	r3,59392
     220:	18d08d04 	addi	r3,r3,16948
     224:	39000035 	stwio	r4,0(r7)
     228:	31400035 	stwio	r5,0(r6)
     22c:	18800037 	ldwio	r2,0(r3)
     230:	1080010c 	andi	r2,r2,4
     234:	103ffd1e 	bne	r2,zero,22c <readSector+0x28>
     238:	18800037 	ldwio	r2,0(r3)
     23c:	1080040c 	andi	r2,r2,16
     240:	103ff81e 	bne	r2,zero,224 <readSector+0x20>
     244:	f800283a 	ret

00000248 <readAddr>:
     248:	defff804 	addi	sp,sp,-32
     24c:	dc400515 	stw	r17,20(sp)
     250:	dc800415 	stw	r18,16(sp)
     254:	dd000215 	stw	r20,8(sp)
     258:	dfc00715 	stw	ra,28(sp)
     25c:	dc000615 	stw	r16,24(sp)
     260:	dcc00315 	stw	r19,12(sp)
     264:	dd400115 	stw	r21,4(sp)
     268:	dd800015 	stw	r22,0(sp)
     26c:	3023883a 	mov	r17,r6
     270:	2025883a 	mov	r18,r4
     274:	2829883a 	mov	r20,r5
     278:	30001226 	beq	r6,zero,2c4 <readAddr+0x7c>
     27c:	05808004 	movi	r22,512
     280:	057a0034 	movhi	r21,59392
     284:	ad500004 	addi	r21,r21,16384
     288:	94c07fcc 	andi	r19,r18,511
     28c:	b4c5c83a 	sub	r2,r22,r19
     290:	9008d27a 	srli	r4,r18,9
     294:	8821883a 	mov	r16,r17
     298:	88800136 	bltu	r17,r2,2a0 <readAddr+0x58>
     29c:	1021883a 	mov	r16,r2
     2a0:	00002040 	call	204 <readSector>
     2a4:	9d4b883a 	add	r5,r19,r21
     2a8:	a009883a 	mov	r4,r20
     2ac:	800d883a 	mov	r6,r16
     2b0:	8c23c83a 	sub	r17,r17,r16
     2b4:	00001180 	call	118 <no_cache_cpy>
     2b8:	a429883a 	add	r20,r20,r16
     2bc:	9425883a 	add	r18,r18,r16
     2c0:	883ff11e 	bne	r17,zero,288 <readAddr+0x40>
     2c4:	dfc00717 	ldw	ra,28(sp)
     2c8:	dc000617 	ldw	r16,24(sp)
     2cc:	dc400517 	ldw	r17,20(sp)
     2d0:	dc800417 	ldw	r18,16(sp)
     2d4:	dcc00317 	ldw	r19,12(sp)
     2d8:	dd000217 	ldw	r20,8(sp)
     2dc:	dd400117 	ldw	r21,4(sp)
     2e0:	dd800017 	ldw	r22,0(sp)
     2e4:	dec00804 	addi	sp,sp,32
     2e8:	f800283a 	ret

000002ec <unsign_div_ceil>:
     2ec:	2145203a 	divu	r2,r4,r5
     2f0:	114b383a 	mul	r5,r2,r5
     2f4:	2148c03a 	cmpne	r4,r4,r5
     2f8:	1105883a 	add	r2,r2,r4
     2fc:	f800283a 	ret

00000300 <blocksAtInodeIndex>:
     300:	defff504 	addi	sp,sp,-44
     304:	dfc00a15 	stw	ra,40(sp)
     308:	dc000915 	stw	r16,36(sp)
     30c:	dc400815 	stw	r17,32(sp)
     310:	dd000515 	stw	r20,20(sp)
     314:	dd400415 	stw	r21,16(sp)
     318:	dd800315 	stw	r22,12(sp)
     31c:	ddc00215 	stw	r23,8(sp)
     320:	dc800715 	stw	r18,28(sp)
     324:	dcc00615 	stw	r19,24(sp)
     328:	22001b17 	ldw	r8,108(r4)
     32c:	22800117 	ldw	r10,4(r4)
     330:	d3201317 	ldw	r12,-32692(gp)
     334:	0017883a 	mov	r11,zero
     338:	0005883a 	mov	r2,zero
     33c:	12a0b03a 	or	r16,r2,r10
     340:	42e2b03a 	or	r17,r8,r11
     344:	001b883a 	mov	r13,zero
     348:	202b883a 	mov	r21,r4
     34c:	2829883a 	mov	r20,r5
     350:	8009883a 	mov	r4,r16
     354:	880b883a 	mov	r5,r17
     358:	302f883a 	mov	r23,r6
     35c:	382d883a 	mov	r22,r7
     360:	600d883a 	mov	r6,r12
     364:	680f883a 	mov	r7,r13
     368:	0002b9c0 	call	2b9c <__udivdi3>
     36c:	d2201317 	ldw	r8,-32692(gp)
     370:	0013883a 	mov	r9,zero
     374:	8009883a 	mov	r4,r16
     378:	880b883a 	mov	r5,r17
     37c:	480f883a 	mov	r7,r9
     380:	400d883a 	mov	r6,r8
     384:	1021883a 	mov	r16,r2
     388:	00030fc0 	call	30fc <__umoddi3>
     38c:	10c8b03a 	or	r4,r2,r3
     390:	20000326 	beq	r4,zero,3a0 <blocksAtInodeIndex+0xa0>
     394:	00800044 	movi	r2,1
     398:	8089883a 	add	r4,r16,r2
     39c:	2021883a 	mov	r16,r4
     3a0:	b507883a 	add	r3,r22,r20
     3a4:	850fc83a 	sub	r7,r16,r20
     3a8:	80c00136 	bltu	r16,r3,3b0 <blocksAtInodeIndex+0xb0>
     3ac:	b00f883a 	mov	r7,r22
     3b0:	d1601317 	ldw	r5,-32692(gp)
     3b4:	008002c4 	movi	r2,11
     3b8:	2824d0ba 	srli	r18,r5,2
     3bc:	15001636 	bltu	r2,r20,418 <blocksAtInodeIndex+0x118>
     3c0:	00800304 	movi	r2,12
     3c4:	1505c83a 	sub	r2,r2,r20
     3c8:	3827883a 	mov	r19,r7
     3cc:	38804a2e 	bgeu	r7,r2,4f8 <blocksAtInodeIndex+0x1f8>
     3d0:	a00a90ba 	slli	r5,r20,2
     3d4:	980c90ba 	slli	r6,r19,2
     3d8:	b809883a 	mov	r4,r23
     3dc:	2d4b883a 	add	r5,r5,r21
     3e0:	29400a04 	addi	r5,r5,40
     3e4:	000374c0 	call	374c <__GI_memcpy>
     3e8:	9805883a 	mov	r2,r19
     3ec:	dfc00a17 	ldw	ra,40(sp)
     3f0:	dc000917 	ldw	r16,36(sp)
     3f4:	dc400817 	ldw	r17,32(sp)
     3f8:	dc800717 	ldw	r18,28(sp)
     3fc:	dcc00617 	ldw	r19,24(sp)
     400:	dd000517 	ldw	r20,20(sp)
     404:	dd400417 	ldw	r21,16(sp)
     408:	dd800317 	ldw	r22,12(sp)
     40c:	ddc00217 	ldw	r23,8(sp)
     410:	dec00b04 	addi	sp,sp,44
     414:	f800283a 	ret
     418:	a53ffd04 	addi	r20,r20,-12
     41c:	9505c83a 	sub	r2,r18,r20
     420:	3827883a 	mov	r19,r7
     424:	3880282e 	bgeu	r7,r2,4c8 <blocksAtInodeIndex+0x1c8>
     428:	a4802936 	bltu	r20,r18,4d0 <blocksAtInodeIndex+0x1d0>
     42c:	9487383a 	mul	r3,r18,r18
     430:	a4a9c83a 	sub	r20,r20,r18
     434:	a0c03236 	bltu	r20,r3,500 <blocksAtInodeIndex+0x200>
     438:	1c85383a 	mul	r2,r3,r18
     43c:	a0e9c83a 	sub	r20,r20,r3
     440:	a0bfe92e 	bgeu	r20,r2,3e8 <blocksAtInodeIndex+0xe8>
     444:	a8c01817 	ldw	r3,96(r21)
     448:	a4a3203a 	divu	r17,r20,r18
     44c:	8ca1383a 	mul	r16,r17,r18
     450:	d0a01117 	ldw	r2,-32700(gp)
     454:	1947383a 	mul	r3,r3,r5
     458:	800890ba 	slli	r4,r16,2
     45c:	d9400104 	addi	r5,sp,4
     460:	1887883a 	add	r3,r3,r2
     464:	1909883a 	add	r4,r3,r4
     468:	01800104 	movi	r6,4
     46c:	00002480 	call	248 <readAddr>
     470:	d8800117 	ldw	r2,4(sp)
     474:	d0e01317 	ldw	r3,-32692(gp)
     478:	882290ba 	slli	r17,r17,2
     47c:	d9400104 	addi	r5,sp,4
     480:	1887383a 	mul	r3,r3,r2
     484:	d0a01117 	ldw	r2,-32700(gp)
     488:	01800104 	movi	r6,4
     48c:	a421c83a 	sub	r16,r20,r16
     490:	1887883a 	add	r3,r3,r2
     494:	1c49883a 	add	r4,r3,r17
     498:	00002480 	call	248 <readAddr>
     49c:	8020913a 	slli	r16,r16,4
     4a0:	d1201317 	ldw	r4,-32692(gp)
     4a4:	d8800117 	ldw	r2,4(sp)
     4a8:	2089383a 	mul	r4,r4,r2
     4ac:	d0a01117 	ldw	r2,-32700(gp)
     4b0:	980c90ba 	slli	r6,r19,2
     4b4:	2409883a 	add	r4,r4,r16
     4b8:	2089883a 	add	r4,r4,r2
     4bc:	b80b883a 	mov	r5,r23
     4c0:	00002480 	call	248 <readAddr>
     4c4:	003fc806 	br	3e8 <blocksAtInodeIndex+0xe8>
     4c8:	1027883a 	mov	r19,r2
     4cc:	a4bfd72e 	bgeu	r20,r18,42c <blocksAtInodeIndex+0x12c>
     4d0:	a9001617 	ldw	r4,88(r21)
     4d4:	a00690ba 	slli	r3,r20,2
     4d8:	d0a01117 	ldw	r2,-32700(gp)
     4dc:	2149383a 	mul	r4,r4,r5
     4e0:	980c90ba 	slli	r6,r19,2
     4e4:	b80b883a 	mov	r5,r23
     4e8:	20c9883a 	add	r4,r4,r3
     4ec:	2089883a 	add	r4,r4,r2
     4f0:	00002480 	call	248 <readAddr>
     4f4:	003fbc06 	br	3e8 <blocksAtInodeIndex+0xe8>
     4f8:	1027883a 	mov	r19,r2
     4fc:	003fb406 	br	3d0 <blocksAtInodeIndex+0xd0>
     500:	a9001717 	ldw	r4,92(r21)
     504:	d0a01117 	ldw	r2,-32700(gp)
     508:	a4a1203a 	divu	r16,r20,r18
     50c:	2149383a 	mul	r4,r4,r5
     510:	800690ba 	slli	r3,r16,2
     514:	84a1383a 	mul	r16,r16,r18
     518:	2089883a 	add	r4,r4,r2
     51c:	20c9883a 	add	r4,r4,r3
     520:	d80b883a 	mov	r5,sp
     524:	01800104 	movi	r6,4
     528:	a421c83a 	sub	r16,r20,r16
     52c:	00002480 	call	248 <readAddr>
     530:	8020913a 	slli	r16,r16,4
     534:	d1201317 	ldw	r4,-32692(gp)
     538:	d8800017 	ldw	r2,0(sp)
     53c:	003fda06 	br	4a8 <blocksAtInodeIndex+0x1a8>

00000540 <iterateNode>:
     540:	defffd04 	addi	sp,sp,-12
     544:	dc000115 	stw	r16,4(sp)
     548:	dc400015 	stw	r17,0(sp)
     54c:	dfc00215 	stw	ra,8(sp)
     550:	28800117 	ldw	r2,4(r5)
     554:	3023883a 	mov	r17,r6
     558:	2821883a 	mov	r16,r5
     55c:	01c02004 	movi	r7,128
     560:	29800304 	addi	r6,r5,12
     564:	10001326 	beq	r2,zero,5b4 <iterateNode+0x74>
     568:	80c00017 	ldw	r3,0(r16)
     56c:	11bfffc4 	addi	r6,r2,-1
     570:	81000217 	ldw	r4,8(r16)
     574:	180490ba 	slli	r2,r3,2
     578:	18c00044 	addi	r3,r3,1
     57c:	21000044 	addi	r4,r4,1
     580:	1405883a 	add	r2,r2,r16
     584:	11400317 	ldw	r5,12(r2)
     588:	80c00015 	stw	r3,0(r16)
     58c:	81800115 	stw	r6,4(r16)
     590:	81000215 	stw	r4,8(r16)
     594:	89400015 	stw	r5,0(r17)
     598:	0007883a 	mov	r3,zero
     59c:	1805883a 	mov	r2,r3
     5a0:	dfc00217 	ldw	ra,8(sp)
     5a4:	dc000117 	ldw	r16,4(sp)
     5a8:	dc400017 	ldw	r17,0(sp)
     5ac:	dec00304 	addi	sp,sp,12
     5b0:	f800283a 	ret
     5b4:	29400217 	ldw	r5,8(r5)
     5b8:	00003000 	call	300 <blocksAtInodeIndex>
     5bc:	00ffffc4 	movi	r3,-1
     5c0:	103fe91e 	bne	r2,zero,568 <iterateNode+0x28>
     5c4:	80000115 	stw	zero,4(r16)
     5c8:	003ff406 	br	59c <iterateNode+0x5c>

000005cc <scanBlock>:
     5cc:	d0a01317 	ldw	r2,-32692(gp)
     5d0:	d0e01117 	ldw	r3,-32700(gp)
     5d4:	deffb904 	addi	sp,sp,-284
     5d8:	1109383a 	mul	r4,r2,r4
     5dc:	dc004515 	stw	r16,276(sp)
     5e0:	dc404415 	stw	r17,272(sp)
     5e4:	dcc04215 	stw	r19,264(sp)
     5e8:	dfc04615 	stw	ra,280(sp)
     5ec:	dc804315 	stw	r18,268(sp)
     5f0:	2827883a 	mov	r19,r5
     5f4:	1023883a 	mov	r17,r2
     5f8:	20e1883a 	add	r16,r4,r3
     5fc:	10001426 	beq	r2,zero,650 <scanBlock+0x84>
     600:	dc804004 	addi	r18,sp,256
     604:	8009883a 	mov	r4,r16
     608:	d9404004 	addi	r5,sp,256
     60c:	01800204 	movi	r6,8
     610:	00002480 	call	248 <readAddr>
     614:	91800183 	ldbu	r6,6(r18)
     618:	81000204 	addi	r4,r16,8
     61c:	d80b883a 	mov	r5,sp
     620:	00002480 	call	248 <readAddr>
     624:	90c00183 	ldbu	r3,6(r18)
     628:	d809883a 	mov	r4,sp
     62c:	980b883a 	mov	r5,r19
     630:	d8c5883a 	add	r2,sp,r3
     634:	10000005 	stb	zero,0(r2)
     638:	0003a7c0 	call	3a7c <__GI_strcmp>
     63c:	10000c26 	beq	r2,zero,670 <scanBlock+0xa4>
     640:	9080010b 	ldhu	r2,4(r18)
     644:	88a3c83a 	sub	r17,r17,r2
     648:	80a1883a 	add	r16,r16,r2
     64c:	883fed1e 	bne	r17,zero,604 <scanBlock+0x38>
     650:	0005883a 	mov	r2,zero
     654:	dfc04617 	ldw	ra,280(sp)
     658:	dc004517 	ldw	r16,276(sp)
     65c:	dc404417 	ldw	r17,272(sp)
     660:	dc804317 	ldw	r18,268(sp)
     664:	dcc04217 	ldw	r19,264(sp)
     668:	dec04704 	addi	sp,sp,284
     66c:	f800283a 	ret
     670:	d8804017 	ldw	r2,256(sp)
     674:	dfc04617 	ldw	ra,280(sp)
     678:	dc004517 	ldw	r16,276(sp)
     67c:	dc404417 	ldw	r17,272(sp)
     680:	dc804317 	ldw	r18,268(sp)
     684:	dcc04217 	ldw	r19,264(sp)
     688:	dec04704 	addi	sp,sp,284
     68c:	f800283a 	ret

00000690 <readInode>:
     690:	defff404 	addi	sp,sp,-48
     694:	dc400915 	stw	r17,36(sp)
     698:	04400034 	movhi	r17,0
     69c:	8c518b04 	addi	r17,r17,17964
     6a0:	88c00517 	ldw	r3,20(r17)
     6a4:	89c00a17 	ldw	r7,40(r17)
     6a8:	00800044 	movi	r2,1
     6ac:	dc000a15 	stw	r16,40(sp)
     6b0:	1887883a 	add	r3,r3,r2
     6b4:	20a1c83a 	sub	r16,r4,r2
     6b8:	d0a01317 	ldw	r2,-32692(gp)
     6bc:	01800804 	movi	r6,32
     6c0:	81cf203a 	divu	r7,r16,r7
     6c4:	398f383a 	mul	r7,r7,r6
     6c8:	1887383a 	mul	r3,r3,r2
     6cc:	d1201117 	ldw	r4,-32700(gp)
     6d0:	dcc00815 	stw	r19,32(sp)
     6d4:	19c7883a 	add	r3,r3,r7
     6d8:	2827883a 	mov	r19,r5
     6dc:	1909883a 	add	r4,r3,r4
     6e0:	d80b883a 	mov	r5,sp
     6e4:	dfc00b15 	stw	ra,44(sp)
     6e8:	00002480 	call	248 <readAddr>
     6ec:	88800a17 	ldw	r2,40(r17)
     6f0:	d9800217 	ldw	r6,8(sp)
     6f4:	d1201117 	ldw	r4,-32700(gp)
     6f8:	8087203a 	divu	r3,r16,r2
     6fc:	1887383a 	mul	r3,r3,r2
     700:	d0a01317 	ldw	r2,-32692(gp)
     704:	980b883a 	mov	r5,r19
     708:	80e1c83a 	sub	r16,r16,r3
     70c:	308d383a 	mul	r6,r6,r2
     710:	d0a01217 	ldw	r2,-32696(gp)
     714:	80a1383a 	mul	r16,r16,r2
     718:	340d883a 	add	r6,r6,r16
     71c:	3109883a 	add	r4,r6,r4
     720:	01802004 	movi	r6,128
     724:	00002480 	call	248 <readAddr>
     728:	dfc00b17 	ldw	ra,44(sp)
     72c:	dc000a17 	ldw	r16,40(sp)
     730:	dc400917 	ldw	r17,36(sp)
     734:	dcc00817 	ldw	r19,32(sp)
     738:	dec00c04 	addi	sp,sp,48
     73c:	f800283a 	ret

00000740 <readFileOffset>:
     740:	defff904 	addi	sp,sp,-28
     744:	dc800315 	stw	r18,12(sp)
     748:	3025883a 	mov	r18,r6
     74c:	dc000515 	stw	r16,20(sp)
     750:	dcc00215 	stw	r19,8(sp)
     754:	dd000115 	stw	r20,4(sp)
     758:	dfc00615 	stw	ra,24(sp)
     75c:	dc400415 	stw	r17,16(sp)
     760:	2029883a 	mov	r20,r4
     764:	3821883a 	mov	r16,r7
     768:	2827883a 	mov	r19,r5
     76c:	90001c26 	beq	r18,zero,7e0 <readFileOffset+0xa0>
     770:	d0e01317 	ldw	r3,-32692(gp)
     774:	a009883a 	mov	r4,r20
     778:	d80d883a 	mov	r6,sp
     77c:	80cb203a 	divu	r5,r16,r3
     780:	28c5383a 	mul	r2,r5,r3
     784:	01c00044 	movi	r7,1
     788:	9023883a 	mov	r17,r18
     78c:	8085c83a 	sub	r2,r16,r2
     790:	1887c83a 	sub	r3,r3,r2
     794:	90c00136 	bltu	r18,r3,79c <readFileOffset+0x5c>
     798:	1823883a 	mov	r17,r3
     79c:	00003000 	call	300 <blocksAtInodeIndex>
     7a0:	d1201317 	ldw	r4,-32692(gp)
     7a4:	d8800017 	ldw	r2,0(sp)
     7a8:	980b883a 	mov	r5,r19
     7ac:	8107203a 	divu	r3,r16,r4
     7b0:	1907383a 	mul	r3,r3,r4
     7b4:	2089383a 	mul	r4,r4,r2
     7b8:	d0a01117 	ldw	r2,-32700(gp)
     7bc:	80c7c83a 	sub	r3,r16,r3
     7c0:	880d883a 	mov	r6,r17
     7c4:	2089883a 	add	r4,r4,r2
     7c8:	20c9883a 	add	r4,r4,r3
     7cc:	9465c83a 	sub	r18,r18,r17
     7d0:	00002480 	call	248 <readAddr>
     7d4:	8461883a 	add	r16,r16,r17
     7d8:	9c67883a 	add	r19,r19,r17
     7dc:	903fe41e 	bne	r18,zero,770 <readFileOffset+0x30>
     7e0:	dfc00617 	ldw	ra,24(sp)
     7e4:	dc000517 	ldw	r16,20(sp)
     7e8:	dc400417 	ldw	r17,16(sp)
     7ec:	dc800317 	ldw	r18,12(sp)
     7f0:	dcc00217 	ldw	r19,8(sp)
     7f4:	dd000117 	ldw	r20,4(sp)
     7f8:	dec00704 	addi	sp,sp,28
     7fc:	f800283a 	ret

00000800 <main>:
     800:	defe0604 	addi	sp,sp,-2024
     804:	00c00204 	movi	r3,8
     808:	00bc0034 	movhi	r2,61440
     80c:	10800404 	addi	r2,r2,16
     810:	dfc1f915 	stw	ra,2020(sp)
     814:	dc01f815 	stw	r16,2016(sp)
     818:	dc41f715 	stw	r17,2012(sp)
     81c:	dc81f615 	stw	r18,2008(sp)
     820:	dcc1f515 	stw	r19,2004(sp)
     824:	10c00035 	stwio	r3,0(r2)
     828:	00fa0034 	movhi	r3,59392
     82c:	18d08d04 	addi	r3,r3,16948
     830:	18800037 	ldwio	r2,0(r3)
     834:	1080008c 	andi	r2,r2,2
     838:	103ffd26 	beq	r2,zero,830 <main+0x30>
     83c:	00c00104 	movi	r3,4
     840:	00bc0034 	movhi	r2,61440
     844:	10800404 	addi	r2,r2,16
     848:	10c00035 	stwio	r3,0(r2)
     84c:	01000044 	movi	r4,1
     850:	00002040 	call	204 <readSector>
     854:	00ba0034 	movhi	r2,59392
     858:	10901204 	addi	r2,r2,16456
     85c:	11000037 	ldwio	r4,0(r2)
     860:	00002040 	call	204 <readSector>
     864:	00ba0034 	movhi	r2,59392
     868:	10900804 	addi	r2,r2,16416
     86c:	10c00037 	ldwio	r3,0(r2)
     870:	04000034 	movhi	r16,0
     874:	84118b04 	addi	r16,r16,17964
     878:	1806927a 	slli	r3,r3,9
     87c:	800b883a 	mov	r5,r16
     880:	01801504 	movi	r6,84
     884:	19010004 	addi	r4,r3,1024
     888:	d0e01115 	stw	r3,-32700(gp)
     88c:	00002480 	call	248 <readAddr>
     890:	80c00617 	ldw	r3,24(r16)
     894:	00810004 	movi	r2,1024
     898:	81000e17 	ldw	r4,56(r16)
     89c:	10c4983a 	sll	r2,r2,r3
     8a0:	00c000b4 	movhi	r3,2
     8a4:	18fbd4c4 	addi	r3,r3,-4269
     8a8:	d0a01315 	stw	r2,-32692(gp)
     8ac:	20c00226 	beq	r4,r3,8b8 <main+0xb8>
     8b0:	01000044 	movi	r4,1
     8b4:	00001000 	call	100 <fail>
     8b8:	81000117 	ldw	r4,4(r16)
     8bc:	81400817 	ldw	r5,32(r16)
     8c0:	00002ec0 	call	2ec <unsign_div_ceil>
     8c4:	81000017 	ldw	r4,0(r16)
     8c8:	81400a17 	ldw	r5,40(r16)
     8cc:	1023883a 	mov	r17,r2
     8d0:	00002ec0 	call	2ec <unsign_div_ceil>
     8d4:	14400226 	beq	r2,r17,8e0 <main+0xe0>
     8d8:	01000084 	movi	r4,2
     8dc:	00001000 	call	100 <fail>
     8e0:	80801317 	ldw	r2,76(r16)
     8e4:	1000991e 	bne	r2,zero,b4c <icache_init_loop+0x34>
     8e8:	00802004 	movi	r2,128
     8ec:	01000084 	movi	r4,2
     8f0:	d80b883a 	mov	r5,sp
     8f4:	d0a01215 	stw	r2,-32696(gp)
     8f8:	dc802004 	addi	r18,sp,128
     8fc:	00006900 	call	690 <readInode>
     900:	01808304 	movi	r6,524
     904:	9009883a 	mov	r4,r18
     908:	000b883a 	mov	r5,zero
     90c:	00039d00 	call	39d0 <__GI_memset>
     910:	0023883a 	mov	r17,zero
     914:	d801f415 	stw	zero,2000(sp)
     918:	0021883a 	mov	r16,zero
     91c:	900b883a 	mov	r5,r18
     920:	d809883a 	mov	r4,sp
     924:	d981f404 	addi	r6,sp,2000
     928:	00005400 	call	540 <iterateNode>
     92c:	01400034 	movhi	r5,0
     930:	294fed04 	addi	r5,r5,16308
     934:	10000e1e 	bne	r2,zero,970 <main+0x170>
     938:	8000101e 	bne	r16,zero,97c <main+0x17c>
     93c:	d881f417 	ldw	r2,2000(sp)
     940:	1009883a 	mov	r4,r2
     944:	103ff526 	beq	r2,zero,91c <main+0x11c>
     948:	00005cc0 	call	5cc <scanBlock>
     94c:	d981f404 	addi	r6,sp,2000
     950:	900b883a 	mov	r5,r18
     954:	d809883a 	mov	r4,sp
     958:	1023883a 	mov	r17,r2
     95c:	1020c03a 	cmpne	r16,r2,zero
     960:	00005400 	call	540 <iterateNode>
     964:	01400034 	movhi	r5,0
     968:	294fed04 	addi	r5,r5,16308
     96c:	103ff226 	beq	r2,zero,938 <main+0x138>
     970:	8000021e 	bne	r16,zero,97c <main+0x17c>
     974:	010000c4 	movi	r4,3
     978:	00001000 	call	100 <fail>
     97c:	00c00084 	movi	r3,2
     980:	00bc0034 	movhi	r2,61440
     984:	10800404 	addi	r2,r2,16
     988:	10c00035 	stwio	r3,0(r2)
     98c:	dcc0a304 	addi	r19,sp,652
     990:	8809883a 	mov	r4,r17
     994:	980b883a 	mov	r5,r19
     998:	dc40c304 	addi	r17,sp,780
     99c:	00006900 	call	690 <readInode>
     9a0:	8809883a 	mov	r4,r17
     9a4:	0000b7c0 	call	b7c <SHA256_Init>
     9a8:	0021883a 	mov	r16,zero
     9ac:	dc80dd04 	addi	r18,sp,884
     9b0:	00000a06 	br	9dc <main+0x1dc>
     9b4:	800f883a 	mov	r7,r16
     9b8:	9809883a 	mov	r4,r19
     9bc:	900b883a 	mov	r5,r18
     9c0:	01810004 	movi	r6,1024
     9c4:	00007400 	call	740 <readFileOffset>
     9c8:	8809883a 	mov	r4,r17
     9cc:	900b883a 	mov	r5,r18
     9d0:	000d883a 	mov	r6,zero
     9d4:	0000eec0 	call	eec <SHA256_Update>
     9d8:	84010004 	addi	r16,r16,1024
     9dc:	d880a417 	ldw	r2,656(sp)
     9e0:	d8c0be17 	ldw	r3,760(sp)
     9e4:	10c4b03a 	or	r2,r2,r3
     9e8:	00bff236 	bltu	zero,r2,9b4 <main+0x1b4>
     9ec:	900b883a 	mov	r5,r18
     9f0:	8809883a 	mov	r4,r17
     9f4:	000128c0 	call	128c <SHA256_End>
     9f8:	01000034 	movhi	r4,0
     9fc:	21114404 	addi	r4,r4,17680
     a00:	0003aa40 	call	3aa4 <__GI_strlen>
     a04:	100d883a 	mov	r6,r2
     a08:	9009883a 	mov	r4,r18
     a0c:	01400034 	movhi	r5,0
     a10:	29514404 	addi	r5,r5,17680
     a14:	0003b440 	call	3b44 <__GI_strncmp>
     a18:	1000551e 	bne	r2,zero,b70 <icache_init_loop+0x58>
     a1c:	9809883a 	mov	r4,r19
     a20:	d941dd04 	addi	r5,sp,1908
     a24:	01800d04 	movi	r6,52
     a28:	000f883a 	mov	r7,zero
     a2c:	00007400 	call	740 <readFileOffset>
     a30:	d8c1dd17 	ldw	r3,1908(sp)
     a34:	00919334 	movhi	r2,17996
     a38:	10915fc4 	addi	r2,r2,17791
     a3c:	1880031e 	bne	r3,r2,a4c <main+0x24c>
     a40:	d8c1de43 	ldbu	r3,1913(sp)
     a44:	00800044 	movi	r2,1
     a48:	18800226 	beq	r3,r2,a54 <main+0x254>
     a4c:	01000104 	movi	r4,4
     a50:	00001000 	call	100 <fail>
     a54:	d881e90b 	ldhu	r2,1956(sp)
     a58:	dc01e517 	ldw	r16,1940(sp)
     a5c:	0023883a 	mov	r17,zero
     a60:	0080202e 	bgeu	zero,r2,ae4 <main+0x2e4>
     a64:	dc81ea04 	addi	r18,sp,1960
     a68:	00000906 	br	a90 <main+0x290>
     a6c:	d941ed17 	ldw	r5,1972(sp)
     a70:	d981ef17 	ldw	r6,1980(sp)
     a74:	d9c1ee17 	ldw	r7,1976(sp)
     a78:	00007400 	call	740 <readFileOffset>
     a7c:	d881e88b 	ldhu	r2,1954(sp)
     a80:	d8c1e90b 	ldhu	r3,1956(sp)
     a84:	8c400044 	addi	r17,r17,1
     a88:	80a1883a 	add	r16,r16,r2
     a8c:	88c0152e 	bgeu	r17,r3,ae4 <main+0x2e4>
     a90:	800f883a 	mov	r7,r16
     a94:	9809883a 	mov	r4,r19
     a98:	900b883a 	mov	r5,r18
     a9c:	01800a04 	movi	r6,40
     aa0:	00007400 	call	740 <readFileOffset>
     aa4:	d881ec17 	ldw	r2,1968(sp)
     aa8:	1080008c 	andi	r2,r2,2
     aac:	103ff326 	beq	r2,zero,a7c <main+0x27c>
     ab0:	d8c1eb17 	ldw	r3,1964(sp)
     ab4:	00800204 	movi	r2,8
     ab8:	000b883a 	mov	r5,zero
     abc:	9809883a 	mov	r4,r19
     ac0:	18bfea1e 	bne	r3,r2,a6c <main+0x26c>
     ac4:	d901ed17 	ldw	r4,1972(sp)
     ac8:	d981ef17 	ldw	r6,1980(sp)
     acc:	8c400044 	addi	r17,r17,1
     ad0:	00039d00 	call	39d0 <__GI_memset>
     ad4:	d881e88b 	ldhu	r2,1954(sp)
     ad8:	d8c1e90b 	ldhu	r3,1956(sp)
     adc:	80a1883a 	add	r16,r16,r2
     ae0:	88ffeb36 	bltu	r17,r3,a90 <main+0x290>
     ae4:	01000044 	movi	r4,1
     ae8:	00fc0034 	movhi	r3,61440
     aec:	18c00404 	addi	r3,r3,16
     af0:	19000035 	stwio	r4,0(r3)
     af4:	d881e317 	ldw	r2,1932(sp)
     af8:	100d883a 	mov	r6,r2
     afc:	0009883a 	mov	r4,zero
     b00:	01440014 	movui	r5,4096

00000b04 <dcache_init_loop>:
     b04:	2000001b 	flushda	0(r4)
     b08:	21000804 	addi	r4,r4,32
     b0c:	217ffd36 	bltu	r4,r5,b04 <dcache_init_loop>
     b10:	0009883a 	mov	r4,zero
     b14:	01440014 	movui	r5,4096

00000b18 <icache_init_loop>:
     b18:	2001483a 	initi	r4
     b1c:	21000104 	addi	r4,r4,4
     b20:	217ffd36 	bltu	r4,r5,b18 <icache_init_loop>
     b24:	0000203a 	flushp
     b28:	3000683a 	jmp	r6
     b2c:	0005883a 	mov	r2,zero
     b30:	dfc1f917 	ldw	ra,2020(sp)
     b34:	dc01f817 	ldw	r16,2016(sp)
     b38:	dc41f717 	ldw	r17,2012(sp)
     b3c:	dc81f617 	ldw	r18,2008(sp)
     b40:	dcc1f517 	ldw	r19,2004(sp)
     b44:	dec1fa04 	addi	sp,sp,2024
     b48:	f800283a 	ret
     b4c:	d1201117 	ldw	r4,-32700(gp)
     b50:	04000034 	movhi	r16,0
     b54:	84116504 	addi	r16,r16,17812
     b58:	800b883a 	mov	r5,r16
     b5c:	21011504 	addi	r4,r4,1108
     b60:	01802604 	movi	r6,152
     b64:	00002480 	call	248 <readAddr>
     b68:	8080010b 	ldhu	r2,4(r16)
     b6c:	003f5f06 	br	8ec <main+0xec>
     b70:	01000144 	movi	r4,5
     b74:	00001000 	call	100 <fail>
     b78:	003fa806 	br	a1c <main+0x21c>

00000b7c <SHA256_Init>:
     b7c:	defffe04 	addi	sp,sp,-8
     b80:	dc000015 	stw	r16,0(sp)
     b84:	2021883a 	mov	r16,r4
     b88:	dfc00115 	stw	ra,4(sp)
     b8c:	000b883a 	mov	r5,zero
     b90:	01801004 	movi	r6,64
     b94:	21000a04 	addi	r4,r4,40
     b98:	80001526 	beq	r16,zero,bf0 <SHA256_Init+0x74>
     b9c:	00800034 	movhi	r2,0
     ba0:	1090f404 	addi	r2,r2,17360
     ba4:	10c00017 	ldw	r3,0(r2)
     ba8:	11c00117 	ldw	r7,4(r2)
     bac:	12000217 	ldw	r8,8(r2)
     bb0:	80c00015 	stw	r3,0(r16)
     bb4:	10c00317 	ldw	r3,12(r2)
     bb8:	81c00115 	stw	r7,4(r16)
     bbc:	11c00417 	ldw	r7,16(r2)
     bc0:	82000215 	stw	r8,8(r16)
     bc4:	12000517 	ldw	r8,20(r2)
     bc8:	80c00315 	stw	r3,12(r16)
     bcc:	10c00617 	ldw	r3,24(r2)
     bd0:	81c00415 	stw	r7,16(r16)
     bd4:	11c00717 	ldw	r7,28(r2)
     bd8:	82000515 	stw	r8,20(r16)
     bdc:	80c00615 	stw	r3,24(r16)
     be0:	81c00715 	stw	r7,28(r16)
     be4:	00039d00 	call	39d0 <__GI_memset>
     be8:	80000915 	stw	zero,36(r16)
     bec:	80000815 	stw	zero,32(r16)
     bf0:	dfc00117 	ldw	ra,4(sp)
     bf4:	dc000017 	ldw	r16,0(sp)
     bf8:	dec00204 	addi	sp,sp,8
     bfc:	f800283a 	ret

00000c00 <SHA256_Transform>:
     c00:	defff504 	addi	sp,sp,-44
     c04:	ddc00215 	stw	r23,8(sp)
     c08:	df000a15 	stw	fp,40(sp)
     c0c:	dc000915 	stw	r16,36(sp)
     c10:	dc400815 	stw	r17,32(sp)
     c14:	dc800715 	stw	r18,28(sp)
     c18:	dcc00615 	stw	r19,24(sp)
     c1c:	dd000515 	stw	r20,20(sp)
     c20:	dd400415 	stw	r21,16(sp)
     c24:	dd800315 	stw	r22,12(sp)
     c28:	20800317 	ldw	r2,12(r4)
     c2c:	24400017 	ldw	r17,0(r4)
     c30:	24800117 	ldw	r18,4(r4)
     c34:	24c00217 	ldw	r19,8(r4)
     c38:	24000417 	ldw	r16,16(r4)
     c3c:	25400517 	ldw	r21,20(r4)
     c40:	25000617 	ldw	r20,24(r4)
     c44:	27000717 	ldw	fp,28(r4)
     c48:	d9000015 	stw	r4,0(sp)
     c4c:	d8800115 	stw	r2,4(sp)
     c50:	281b883a 	mov	r13,r5
     c54:	25c00a04 	addi	r23,r4,40
     c58:	001d883a 	mov	r14,zero
     c5c:	03c00034 	movhi	r15,0
     c60:	7bd0b404 	addi	r15,r15,17104
     c64:	69400017 	ldw	r5,0(r13)
     c68:	8006157a 	roli	r3,r16,21
     c6c:	800816ba 	roli	r4,r16,26
     c70:	701290ba 	slli	r9,r14,2
     c74:	801411fa 	roli	r10,r16,7
     c78:	280a143a 	roli	r5,r5,16
     c7c:	20c8f03a 	xor	r4,r4,r3
     c80:	00bfc074 	movhi	r2,65281
     c84:	10bfc004 	addi	r2,r2,-256
     c88:	880e17ba 	roli	r7,r17,30
     c8c:	881814fa 	roli	r12,r17,19
     c90:	02003ff4 	movhi	r8,255
     c94:	42003fc4 	addi	r8,r8,255
     c98:	4bc7883a 	add	r3,r9,r15
     c9c:	2a10703a 	and	r8,r5,r8
     ca0:	040c303a 	nor	r6,zero,r16
     ca4:	288a703a 	and	r5,r5,r2
     ca8:	2288f03a 	xor	r4,r4,r10
     cac:	881412ba 	roli	r10,r17,10
     cb0:	350c703a 	and	r6,r6,r20
     cb4:	8544703a 	and	r2,r16,r21
     cb8:	1ac00017 	ldw	r11,0(r3)
     cbc:	280ad23a 	srli	r5,r5,8
     cc0:	4010923a 	slli	r8,r8,8
     cc4:	1184f03a 	xor	r2,r2,r6
     cc8:	9c86f03a 	xor	r3,r19,r18
     ccc:	2709883a 	add	r4,r4,fp
     cd0:	3b0ef03a 	xor	r7,r7,r12
     cd4:	2089883a 	add	r4,r4,r2
     cd8:	1c46703a 	and	r3,r3,r17
     cdc:	94c4703a 	and	r2,r18,r19
     ce0:	3a8ef03a 	xor	r7,r7,r10
     ce4:	da800117 	ldw	r10,4(sp)
     ce8:	2a0ab03a 	or	r5,r5,r8
     cec:	1886f03a 	xor	r3,r3,r2
     cf0:	22c9883a 	add	r4,r4,r11
     cf4:	2149883a 	add	r4,r4,r5
     cf8:	38cd883a 	add	r6,r7,r3
     cfc:	4dd3883a 	add	r9,r9,r23
     d00:	73800044 	addi	r14,r14,1
     d04:	008003c4 	movi	r2,15
     d08:	a039883a 	mov	fp,r20
     d0c:	dcc00115 	stw	r19,4(sp)
     d10:	a829883a 	mov	r20,r21
     d14:	9027883a 	mov	r19,r18
     d18:	802b883a 	mov	r21,r16
     d1c:	8825883a 	mov	r18,r17
     d20:	49400015 	stw	r5,0(r9)
     d24:	6b400104 	addi	r13,r13,4
     d28:	5121883a 	add	r16,r10,r4
     d2c:	21a3883a 	add	r17,r4,r6
     d30:	13bfcc0e 	bge	r2,r14,c64 <SHA256_Transform+0x64>
     d34:	700490ba 	slli	r2,r14,2
     d38:	13ed883a 	add	r22,r2,r15
     d3c:	70800384 	addi	r2,r14,14
     d40:	73c00044 	addi	r15,r14,1
     d44:	108003cc 	andi	r2,r2,15
     d48:	100490ba 	slli	r2,r2,2
     d4c:	78c003cc 	andi	r3,r15,15
     d50:	180690ba 	slli	r3,r3,2
     d54:	15c5883a 	add	r2,r2,r23
     d58:	13000017 	ldw	r12,0(r2)
     d5c:	1dc7883a 	add	r3,r3,r23
     d60:	1b400017 	ldw	r13,0(r3)
     d64:	71000244 	addi	r4,r14,9
     d68:	210003cc 	andi	r4,r4,15
     d6c:	600c137a 	roli	r6,r12,13
     d70:	8004157a 	roli	r2,r16,21
     d74:	600a13fa 	roli	r5,r12,15
     d78:	800616ba 	roli	r3,r16,26
     d7c:	200890ba 	slli	r4,r4,2
     d80:	681413ba 	roli	r10,r13,14
     d84:	801611fa 	roli	r11,r16,7
     d88:	724003cc 	andi	r9,r14,15
     d8c:	6810167a 	roli	r8,r13,25
     d90:	481290ba 	slli	r9,r9,2
     d94:	298af03a 	xor	r5,r5,r6
     d98:	881c14fa 	roli	r14,r17,19
     d9c:	25c9883a 	add	r4,r4,r23
     da0:	1886f03a 	xor	r3,r3,r2
     da4:	880c17ba 	roli	r6,r17,30
     da8:	0404303a 	nor	r2,zero,r16
     dac:	6018d2ba 	srli	r12,r12,10
     db0:	21c00017 	ldw	r7,0(r4)
     db4:	1504703a 	and	r2,r2,r20
     db8:	8548703a 	and	r4,r16,r21
     dbc:	4290f03a 	xor	r8,r8,r10
     dc0:	1ac6f03a 	xor	r3,r3,r11
     dc4:	881412ba 	roli	r10,r17,10
     dc8:	681ad0fa 	srli	r13,r13,3
     dcc:	2088f03a 	xor	r4,r4,r2
     dd0:	4dd3883a 	add	r9,r9,r23
     dd4:	9c84f03a 	xor	r2,r19,r18
     dd8:	1f07883a 	add	r3,r3,fp
     ddc:	2b18f03a 	xor	r12,r5,r12
     de0:	b2c00017 	ldw	r11,0(r22)
     de4:	49400017 	ldw	r5,0(r9)
     de8:	1907883a 	add	r3,r3,r4
     dec:	338cf03a 	xor	r6,r6,r14
     df0:	94c8703a 	and	r4,r18,r19
     df4:	1444703a 	and	r2,r2,r17
     df8:	1104f03a 	xor	r2,r2,r4
     dfc:	435af03a 	xor	r13,r8,r13
     e00:	3b0f883a 	add	r7,r7,r12
     e04:	328cf03a 	xor	r6,r6,r10
     e08:	308d883a 	add	r6,r6,r2
     e0c:	3b4f883a 	add	r7,r7,r13
     e10:	d8800117 	ldw	r2,4(sp)
     e14:	29cb883a 	add	r5,r5,r7
     e18:	1ac7883a 	add	r3,r3,r11
     e1c:	1949883a 	add	r4,r3,r5
     e20:	a039883a 	mov	fp,r20
     e24:	a829883a 	mov	r20,r21
     e28:	802b883a 	mov	r21,r16
     e2c:	1121883a 	add	r16,r2,r4
     e30:	00800fc4 	movi	r2,63
     e34:	dcc00115 	stw	r19,4(sp)
     e38:	781d883a 	mov	r14,r15
     e3c:	9027883a 	mov	r19,r18
     e40:	49400015 	stw	r5,0(r9)
     e44:	8825883a 	mov	r18,r17
     e48:	b5800104 	addi	r22,r22,4
     e4c:	21a3883a 	add	r17,r4,r6
     e50:	13ffba0e 	bge	r2,r15,d3c <SHA256_Transform+0x13c>
     e54:	da800017 	ldw	r10,0(sp)
     e58:	50c00017 	ldw	r3,0(r10)
     e5c:	51000117 	ldw	r4,4(r10)
     e60:	51400217 	ldw	r5,8(r10)
     e64:	51800317 	ldw	r6,12(r10)
     e68:	51c00417 	ldw	r7,16(r10)
     e6c:	52000517 	ldw	r8,20(r10)
     e70:	52400617 	ldw	r9,24(r10)
     e74:	50800717 	ldw	r2,28(r10)
     e78:	da800117 	ldw	r10,4(sp)
     e7c:	1c47883a 	add	r3,r3,r17
     e80:	2489883a 	add	r4,r4,r18
     e84:	328d883a 	add	r6,r6,r10
     e88:	da800017 	ldw	r10,0(sp)
     e8c:	2ccb883a 	add	r5,r5,r19
     e90:	3c0f883a 	add	r7,r7,r16
     e94:	4551883a 	add	r8,r8,r21
     e98:	4d13883a 	add	r9,r9,r20
     e9c:	1705883a 	add	r2,r2,fp
     ea0:	50800715 	stw	r2,28(r10)
     ea4:	50c00015 	stw	r3,0(r10)
     ea8:	51000115 	stw	r4,4(r10)
     eac:	51400215 	stw	r5,8(r10)
     eb0:	51800315 	stw	r6,12(r10)
     eb4:	51c00415 	stw	r7,16(r10)
     eb8:	52000515 	stw	r8,20(r10)
     ebc:	52400615 	stw	r9,24(r10)
     ec0:	df000a17 	ldw	fp,40(sp)
     ec4:	dc000917 	ldw	r16,36(sp)
     ec8:	dc400817 	ldw	r17,32(sp)
     ecc:	dc800717 	ldw	r18,28(sp)
     ed0:	dcc00617 	ldw	r19,24(sp)
     ed4:	dd000517 	ldw	r20,20(sp)
     ed8:	dd400417 	ldw	r21,16(sp)
     edc:	dd800317 	ldw	r22,12(sp)
     ee0:	ddc00217 	ldw	r23,8(sp)
     ee4:	dec00b04 	addi	sp,sp,44
     ee8:	f800283a 	ret

00000eec <SHA256_Update>:
     eec:	defffb04 	addi	sp,sp,-20
     ef0:	dc000315 	stw	r16,12(sp)
     ef4:	dc400215 	stw	r17,8(sp)
     ef8:	dc800115 	stw	r18,4(sp)
     efc:	dfc00415 	stw	ra,16(sp)
     f00:	dcc00015 	stw	r19,0(sp)
     f04:	3023883a 	mov	r17,r6
     f08:	2021883a 	mov	r16,r4
     f0c:	2825883a 	mov	r18,r5
     f10:	30002826 	beq	r6,zero,fb4 <SHA256_Update+0xc8>
     f14:	20c00917 	ldw	r3,36(r4)
     f18:	20800817 	ldw	r2,32(r4)
     f1c:	02400fc4 	movi	r9,63
     f20:	181a977a 	slli	r13,r3,29
     f24:	1008d0fa 	srli	r4,r2,3
     f28:	6916b03a 	or	r11,r13,r4
     f2c:	5a4e703a 	and	r7,r11,r9
     f30:	3800271e 	bne	r7,zero,fd0 <SHA256_Update+0xe4>
     f34:	00800fc4 	movi	r2,63
     f38:	14400f2e 	bgeu	r2,r17,f78 <SHA256_Update+0x8c>
     f3c:	1027883a 	mov	r19,r2
     f40:	900b883a 	mov	r5,r18
     f44:	8009883a 	mov	r4,r16
     f48:	0000c000 	call	c00 <SHA256_Transform>
     f4c:	81000817 	ldw	r4,32(r16)
     f50:	81400917 	ldw	r5,36(r16)
     f54:	01808004 	movi	r6,512
     f58:	2185883a 	add	r2,r4,r6
     f5c:	1111803a 	cmpltu	r8,r2,r4
     f60:	4151883a 	add	r8,r8,r5
     f64:	8c7ff004 	addi	r17,r17,-64
     f68:	94801004 	addi	r18,r18,64
     f6c:	80800815 	stw	r2,32(r16)
     f70:	82000915 	stw	r8,36(r16)
     f74:	9c7ff236 	bltu	r19,r17,f40 <SHA256_Update+0x54>
     f78:	88000e26 	beq	r17,zero,fb4 <SHA256_Update+0xc8>
     f7c:	900b883a 	mov	r5,r18
     f80:	81000a04 	addi	r4,r16,40
     f84:	880d883a 	mov	r6,r17
     f88:	000374c0 	call	374c <__GI_memcpy>
     f8c:	881090fa 	slli	r8,r17,3
     f90:	81000817 	ldw	r4,32(r16)
     f94:	81400917 	ldw	r5,36(r16)
     f98:	000f883a 	mov	r7,zero
     f9c:	2205883a 	add	r2,r4,r8
     fa0:	1111803a 	cmpltu	r8,r2,r4
     fa4:	29c7883a 	add	r3,r5,r7
     fa8:	40d1883a 	add	r8,r8,r3
     fac:	82000915 	stw	r8,36(r16)
     fb0:	80800815 	stw	r2,32(r16)
     fb4:	dfc00417 	ldw	ra,16(sp)
     fb8:	dc000317 	ldw	r16,12(sp)
     fbc:	dc400217 	ldw	r17,8(sp)
     fc0:	dc800117 	ldw	r18,4(sp)
     fc4:	dcc00017 	ldw	r19,0(sp)
     fc8:	dec00504 	addi	sp,sp,20
     fcc:	f800283a 	ret
     fd0:	00801004 	movi	r2,64
     fd4:	11e7c83a 	sub	r19,r2,r7
     fd8:	34c01436 	bltu	r6,r19,102c <NIOS2_DCACHE_SIZE+0x2c>
     fdc:	81c9883a 	add	r4,r16,r7
     fe0:	980d883a 	mov	r6,r19
     fe4:	21000a04 	addi	r4,r4,40
     fe8:	000374c0 	call	374c <__GI_memcpy>
     fec:	981290fa 	slli	r9,r19,3
     ff0:	81400817 	ldw	r5,32(r16)
     ff4:	81800917 	ldw	r6,36(r16)
     ff8:	0011883a 	mov	r8,zero
     ffc:	2a45883a 	add	r2,r5,r9
    1000:	1153803a 	cmpltu	r9,r2,r5
    1004:	3207883a 	add	r3,r6,r8
    1008:	48d3883a 	add	r9,r9,r3
    100c:	8009883a 	mov	r4,r16
    1010:	80800815 	stw	r2,32(r16)
    1014:	82400915 	stw	r9,36(r16)
    1018:	81400a04 	addi	r5,r16,40
    101c:	94e5883a 	add	r18,r18,r19
    1020:	8ce3c83a 	sub	r17,r17,r19
    1024:	0000c000 	call	c00 <SHA256_Transform>
    1028:	003fc206 	br	f34 <SHA256_Update+0x48>
    102c:	81c9883a 	add	r4,r16,r7
    1030:	21000a04 	addi	r4,r4,40
    1034:	003fd406 	br	f88 <SHA256_Update+0x9c>

00001038 <SHA256_Final>:
    1038:	defffb04 	addi	sp,sp,-20
    103c:	dc800115 	stw	r18,4(sp)
    1040:	dcc00015 	stw	r19,0(sp)
    1044:	dfc00415 	stw	ra,16(sp)
    1048:	dc000315 	stw	r16,12(sp)
    104c:	dc400215 	stw	r17,8(sp)
    1050:	2027883a 	mov	r19,r4
    1054:	2825883a 	mov	r18,r5
    1058:	20007426 	beq	r4,zero,122c <SHA256_Final+0x1f4>
    105c:	2ac00917 	ldw	r11,36(r5)
    1060:	2a800817 	ldw	r10,32(r5)
    1064:	023fc074 	movhi	r8,65281
    1068:	423fc004 	addi	r8,r8,-256
    106c:	01803ff4 	movhi	r6,255
    1070:	31803fc4 	addi	r6,r6,255
    1074:	5206703a 	and	r3,r10,r8
    1078:	5a04703a 	and	r2,r11,r8
    107c:	5988703a 	and	r4,r11,r6
    1080:	518a703a 	and	r5,r10,r6
    1084:	181a963a 	slli	r13,r3,24
    1088:	1018d23a 	srli	r12,r2,8
    108c:	281c923a 	slli	r14,r5,8
    1090:	201ed63a 	srli	r15,r4,24
    1094:	1812d23a 	srli	r9,r3,8
    1098:	200c923a 	slli	r6,r4,8
    109c:	6b10b03a 	or	r8,r13,r12
    10a0:	7b8eb03a 	or	r7,r15,r14
    10a4:	013ffff4 	movhi	r4,65535
    10a8:	21000004 	addi	r4,r4,0
    10ac:	00bfffd4 	movui	r2,65535
    10b0:	4198b03a 	or	r12,r8,r6
    10b4:	49dab03a 	or	r13,r9,r7
    10b8:	6090703a 	and	r8,r12,r2
    10bc:	6892703a 	and	r9,r13,r2
    10c0:	690e703a 	and	r7,r13,r4
    10c4:	610c703a 	and	r6,r12,r4
    10c8:	5806977a 	slli	r3,r11,29
    10cc:	5004d0fa 	srli	r2,r10,3
    10d0:	3008d43a 	srli	r4,r6,16
    10d4:	3820943a 	slli	r16,r7,16
    10d8:	4022d43a 	srli	r17,r8,16
    10dc:	480a943a 	slli	r5,r9,16
    10e0:	381ad43a 	srli	r13,r7,16
    10e4:	4014943a 	slli	r10,r8,16
    10e8:	189cb03a 	or	r14,r3,r2
    10ec:	8118b03a 	or	r12,r16,r4
    10f0:	00800fc4 	movi	r2,63
    10f4:	8956b03a 	or	r11,r17,r5
    10f8:	7088703a 	and	r4,r14,r2
    10fc:	6ac6b03a 	or	r3,r13,r11
    1100:	6284b03a 	or	r2,r12,r10
    1104:	90c00915 	stw	r3,36(r18)
    1108:	90800815 	stw	r2,32(r18)
    110c:	20001b26 	beq	r4,zero,117c <SHA256_Final+0x144>
    1110:	2487883a 	add	r3,r4,r18
    1114:	00bfe004 	movi	r2,-128
    1118:	21400044 	addi	r5,r4,1
    111c:	01800e04 	movi	r6,56
    1120:	18800a05 	stb	r2,40(r3)
    1124:	3140532e 	bgeu	r6,r5,1274 <SHA256_Final+0x23c>
    1128:	00800fc4 	movi	r2,63
    112c:	11404a2e 	bgeu	r2,r5,1258 <SHA256_Final+0x220>
    1130:	94000a04 	addi	r16,r18,40
    1134:	9009883a 	mov	r4,r18
    1138:	800b883a 	mov	r5,r16
    113c:	0000c000 	call	c00 <SHA256_Transform>
    1140:	80000015 	stw	zero,0(r16)
    1144:	90000b15 	stw	zero,44(r18)
    1148:	90000c15 	stw	zero,48(r18)
    114c:	90000d15 	stw	zero,52(r18)
    1150:	90000e15 	stw	zero,56(r18)
    1154:	90000f15 	stw	zero,60(r18)
    1158:	90001015 	stw	zero,64(r18)
    115c:	90001115 	stw	zero,68(r18)
    1160:	90001215 	stw	zero,72(r18)
    1164:	90001315 	stw	zero,76(r18)
    1168:	90001415 	stw	zero,80(r18)
    116c:	90001515 	stw	zero,84(r18)
    1170:	90001615 	stw	zero,88(r18)
    1174:	90001715 	stw	zero,92(r18)
    1178:	00001106 	br	11c0 <SHA256_Final+0x188>
    117c:	90000a15 	stw	zero,40(r18)
    1180:	00bfe004 	movi	r2,-128
    1184:	90800a05 	stb	r2,40(r18)
    1188:	90000b15 	stw	zero,44(r18)
    118c:	90000c15 	stw	zero,48(r18)
    1190:	90000d15 	stw	zero,52(r18)
    1194:	90000e15 	stw	zero,56(r18)
    1198:	90000f15 	stw	zero,60(r18)
    119c:	90001015 	stw	zero,64(r18)
    11a0:	90001115 	stw	zero,68(r18)
    11a4:	90001215 	stw	zero,72(r18)
    11a8:	90001315 	stw	zero,76(r18)
    11ac:	90001415 	stw	zero,80(r18)
    11b0:	90001515 	stw	zero,84(r18)
    11b4:	90001615 	stw	zero,88(r18)
    11b8:	90001715 	stw	zero,92(r18)
    11bc:	94000a04 	addi	r16,r18,40
    11c0:	90800817 	ldw	r2,32(r18)
    11c4:	90c00917 	ldw	r3,36(r18)
    11c8:	800b883a 	mov	r5,r16
    11cc:	9009883a 	mov	r4,r18
    11d0:	90c01915 	stw	r3,100(r18)
    11d4:	90801815 	stw	r2,96(r18)
    11d8:	0000c000 	call	c00 <SHA256_Transform>
    11dc:	020001c4 	movi	r8,7
    11e0:	000b883a 	mov	r5,zero
    11e4:	01ffc074 	movhi	r7,65281
    11e8:	39ffc004 	addi	r7,r7,-256
    11ec:	01803ff4 	movhi	r6,255
    11f0:	31803fc4 	addi	r6,r6,255
    11f4:	9009883a 	mov	r4,r18
    11f8:	20800017 	ldw	r2,0(r4)
    11fc:	29400044 	addi	r5,r5,1
    1200:	1004143a 	roli	r2,r2,16
    1204:	1186703a 	and	r3,r2,r6
    1208:	11c4703a 	and	r2,r2,r7
    120c:	1004d23a 	srli	r2,r2,8
    1210:	1806923a 	slli	r3,r3,8
    1214:	10c4b03a 	or	r2,r2,r3
    1218:	20800015 	stw	r2,0(r4)
    121c:	98800015 	stw	r2,0(r19)
    1220:	21000104 	addi	r4,r4,4
    1224:	9cc00104 	addi	r19,r19,4
    1228:	417ff30e 	bge	r8,r5,11f8 <SHA256_Final+0x1c0>
    122c:	9009883a 	mov	r4,r18
    1230:	000b883a 	mov	r5,zero
    1234:	01801a04 	movi	r6,104
    1238:	00039d00 	call	39d0 <__GI_memset>
    123c:	dfc00417 	ldw	ra,16(sp)
    1240:	dc000317 	ldw	r16,12(sp)
    1244:	dc400217 	ldw	r17,8(sp)
    1248:	dc800117 	ldw	r18,4(sp)
    124c:	dcc00017 	ldw	r19,0(sp)
    1250:	dec00504 	addi	sp,sp,20
    1254:	f800283a 	ret
    1258:	9149883a 	add	r4,r18,r5
    125c:	01801004 	movi	r6,64
    1260:	314dc83a 	sub	r6,r6,r5
    1264:	21000a04 	addi	r4,r4,40
    1268:	000b883a 	mov	r5,zero
    126c:	00039d00 	call	39d0 <__GI_memset>
    1270:	003faf06 	br	1130 <SHA256_Final+0xf8>
    1274:	9149883a 	add	r4,r18,r5
    1278:	314dc83a 	sub	r6,r6,r5
    127c:	21000a04 	addi	r4,r4,40
    1280:	000b883a 	mov	r5,zero
    1284:	00039d00 	call	39d0 <__GI_memset>
    1288:	003fcc06 	br	11bc <SHA256_Final+0x184>

0000128c <SHA256_End>:
    128c:	defff504 	addi	sp,sp,-44
    1290:	dc000915 	stw	r16,36(sp)
    1294:	dc400815 	stw	r17,32(sp)
    1298:	dfc00a15 	stw	ra,40(sp)
    129c:	2821883a 	mov	r16,r5
    12a0:	d823883a 	mov	r17,sp
    12a4:	28001c26 	beq	r5,zero,1318 <SHA256_End+0x8c>
    12a8:	200b883a 	mov	r5,r4
    12ac:	d809883a 	mov	r4,sp
    12b0:	00010380 	call	1038 <SHA256_Final>
    12b4:	000d883a 	mov	r6,zero
    12b8:	01c007c4 	movi	r7,31
    12bc:	89400003 	ldbu	r5,0(r17)
    12c0:	d0a00617 	ldw	r2,-32744(gp)
    12c4:	31800044 	addi	r6,r6,1
    12c8:	2808d13a 	srli	r4,r5,4
    12cc:	294003cc 	andi	r5,r5,15
    12d0:	8c400044 	addi	r17,r17,1
    12d4:	2089883a 	add	r4,r4,r2
    12d8:	20c00003 	ldbu	r3,0(r4)
    12dc:	80c00005 	stb	r3,0(r16)
    12e0:	d0a00617 	ldw	r2,-32744(gp)
    12e4:	84000044 	addi	r16,r16,1
    12e8:	288b883a 	add	r5,r5,r2
    12ec:	28c00003 	ldbu	r3,0(r5)
    12f0:	80c00005 	stb	r3,0(r16)
    12f4:	84000044 	addi	r16,r16,1
    12f8:	39bff00e 	bge	r7,r6,12bc <SHA256_End+0x30>
    12fc:	8005883a 	mov	r2,r16
    1300:	80000005 	stb	zero,0(r16)
    1304:	dfc00a17 	ldw	ra,40(sp)
    1308:	dc000917 	ldw	r16,36(sp)
    130c:	dc400817 	ldw	r17,32(sp)
    1310:	dec00b04 	addi	sp,sp,44
    1314:	f800283a 	ret
    1318:	01801a04 	movi	r6,104
    131c:	00039d00 	call	39d0 <__GI_memset>
    1320:	8005883a 	mov	r2,r16
    1324:	dfc00a17 	ldw	ra,40(sp)
    1328:	dc000917 	ldw	r16,36(sp)
    132c:	dc400817 	ldw	r17,32(sp)
    1330:	dec00b04 	addi	sp,sp,44
    1334:	f800283a 	ret

00001338 <SHA256_Data>:
    1338:	deffe204 	addi	sp,sp,-120
    133c:	dc401c15 	stw	r17,112(sp)
    1340:	2023883a 	mov	r17,r4
    1344:	d809883a 	mov	r4,sp
    1348:	dfc01d15 	stw	ra,116(sp)
    134c:	dcc01b15 	stw	r19,108(sp)
    1350:	dd401a15 	stw	r21,104(sp)
    1354:	2827883a 	mov	r19,r5
    1358:	302b883a 	mov	r21,r6
    135c:	0000b7c0 	call	b7c <SHA256_Init>
    1360:	880b883a 	mov	r5,r17
    1364:	d809883a 	mov	r4,sp
    1368:	980d883a 	mov	r6,r19
    136c:	0000eec0 	call	eec <SHA256_Update>
    1370:	d809883a 	mov	r4,sp
    1374:	a80b883a 	mov	r5,r21
    1378:	000128c0 	call	128c <SHA256_End>
    137c:	dfc01d17 	ldw	ra,116(sp)
    1380:	dc401c17 	ldw	r17,112(sp)
    1384:	dcc01b17 	ldw	r19,108(sp)
    1388:	dd401a17 	ldw	r21,104(sp)
    138c:	dec01e04 	addi	sp,sp,120
    1390:	f800283a 	ret

00001394 <SHA512_Init>:
    1394:	defffe04 	addi	sp,sp,-8
    1398:	dc000015 	stw	r16,0(sp)
    139c:	2021883a 	mov	r16,r4
    13a0:	dfc00115 	stw	ra,4(sp)
    13a4:	000b883a 	mov	r5,zero
    13a8:	01802004 	movi	r6,128
    13ac:	21001404 	addi	r4,r4,80
    13b0:	80002826 	beq	r16,zero,1454 <SHA512_Init+0xc0>
    13b4:	00800034 	movhi	r2,0
    13b8:	1090a404 	addi	r2,r2,17040
    13bc:	10c00017 	ldw	r3,0(r2)
    13c0:	11c00117 	ldw	r7,4(r2)
    13c4:	12000217 	ldw	r8,8(r2)
    13c8:	80c00015 	stw	r3,0(r16)
    13cc:	10c00317 	ldw	r3,12(r2)
    13d0:	81c00115 	stw	r7,4(r16)
    13d4:	11c00417 	ldw	r7,16(r2)
    13d8:	82000215 	stw	r8,8(r16)
    13dc:	12000517 	ldw	r8,20(r2)
    13e0:	80c00315 	stw	r3,12(r16)
    13e4:	10c00617 	ldw	r3,24(r2)
    13e8:	81c00415 	stw	r7,16(r16)
    13ec:	11c00717 	ldw	r7,28(r2)
    13f0:	82000515 	stw	r8,20(r16)
    13f4:	12000817 	ldw	r8,32(r2)
    13f8:	80c00615 	stw	r3,24(r16)
    13fc:	10c00917 	ldw	r3,36(r2)
    1400:	81c00715 	stw	r7,28(r16)
    1404:	11c00a17 	ldw	r7,40(r2)
    1408:	82000815 	stw	r8,32(r16)
    140c:	12000b17 	ldw	r8,44(r2)
    1410:	80c00915 	stw	r3,36(r16)
    1414:	10c00c17 	ldw	r3,48(r2)
    1418:	81c00a15 	stw	r7,40(r16)
    141c:	11c00d17 	ldw	r7,52(r2)
    1420:	82000b15 	stw	r8,44(r16)
    1424:	12000e17 	ldw	r8,56(r2)
    1428:	80c00c15 	stw	r3,48(r16)
    142c:	10c00f17 	ldw	r3,60(r2)
    1430:	81c00d15 	stw	r7,52(r16)
    1434:	82000e15 	stw	r8,56(r16)
    1438:	80c00f15 	stw	r3,60(r16)
    143c:	00039d00 	call	39d0 <__GI_memset>
    1440:	0007883a 	mov	r3,zero
    1444:	80c01015 	stw	r3,64(r16)
    1448:	80001115 	stw	zero,68(r16)
    144c:	80001215 	stw	zero,72(r16)
    1450:	80001315 	stw	zero,76(r16)
    1454:	dfc00117 	ldw	ra,4(sp)
    1458:	dc000017 	ldw	r16,0(sp)
    145c:	dec00204 	addi	sp,sp,8
    1460:	f800283a 	ret

00001464 <SHA512_Transform>:
    1464:	deff8604 	addi	sp,sp,-488
    1468:	d9000015 	stw	r4,0(sp)
    146c:	dc007815 	stw	r16,480(sp)
    1470:	dc807615 	stw	r18,472(sp)
    1474:	dcc07515 	stw	r19,468(sp)
    1478:	dd407315 	stw	r21,460(sp)
    147c:	dd807215 	stw	r22,456(sp)
    1480:	ddc07115 	stw	r23,452(sp)
    1484:	df007915 	stw	fp,484(sp)
    1488:	dc407715 	stw	r17,476(sp)
    148c:	dd007415 	stw	r20,464(sp)
    1490:	20800017 	ldw	r2,0(r4)
    1494:	d9800017 	ldw	r6,0(sp)
    1498:	d9c00017 	ldw	r7,0(sp)
    149c:	d8800215 	stw	r2,8(sp)
    14a0:	20c00217 	ldw	r3,8(r4)
    14a4:	da000017 	ldw	r8,0(sp)
    14a8:	da400017 	ldw	r9,0(sp)
    14ac:	d8c00415 	stw	r3,16(sp)
    14b0:	21000417 	ldw	r4,16(r4)
    14b4:	da800017 	ldw	r10,0(sp)
    14b8:	dac00017 	ldw	r11,0(sp)
    14bc:	d9000615 	stw	r4,24(sp)
    14c0:	31800617 	ldw	r6,24(r6)
    14c4:	002d883a 	mov	r22,zero
    14c8:	d9800815 	stw	r6,32(sp)
    14cc:	39c00817 	ldw	r7,32(r7)
    14d0:	d9c00a15 	stw	r7,40(sp)
    14d4:	42000a17 	ldw	r8,40(r8)
    14d8:	da000c15 	stw	r8,48(sp)
    14dc:	4a400c17 	ldw	r9,48(r9)
    14e0:	da400e15 	stw	r9,56(sp)
    14e4:	52800e17 	ldw	r10,56(r10)
    14e8:	da801015 	stw	r10,64(sp)
    14ec:	5ac00117 	ldw	r11,4(r11)
    14f0:	dac00315 	stw	r11,12(sp)
    14f4:	db000017 	ldw	r12,0(sp)
    14f8:	db800017 	ldw	r14,0(sp)
    14fc:	dbc00017 	ldw	r15,0(sp)
    1500:	63000317 	ldw	r12,12(r12)
    1504:	dc000017 	ldw	r16,0(sp)
    1508:	dc800017 	ldw	r18,0(sp)
    150c:	db000515 	stw	r12,20(sp)
    1510:	73800517 	ldw	r14,20(r14)
    1514:	dcc00017 	ldw	r19,0(sp)
    1518:	dd400017 	ldw	r21,0(sp)
    151c:	db800715 	stw	r14,28(sp)
    1520:	7bc00717 	ldw	r15,28(r15)
    1524:	dbc00915 	stw	r15,36(sp)
    1528:	84000917 	ldw	r16,36(r16)
    152c:	dc000b15 	stw	r16,44(sp)
    1530:	94800b17 	ldw	r18,44(r18)
    1534:	dc800d15 	stw	r18,52(sp)
    1538:	9cc00d17 	ldw	r19,52(r19)
    153c:	dcc00f15 	stw	r19,60(sp)
    1540:	ad400f17 	ldw	r21,60(r21)
    1544:	dd801615 	stw	r22,88(sp)
    1548:	dd801c15 	stw	r22,112(sp)
    154c:	dd401115 	stw	r21,68(sp)
    1550:	dd801e15 	stw	r22,120(sp)
    1554:	dd802015 	stw	r22,128(sp)
    1558:	dd802415 	stw	r22,144(sp)
    155c:	dd802915 	stw	r22,164(sp)
    1560:	dd802f15 	stw	r22,188(sp)
    1564:	dd803315 	stw	r22,204(sp)
    1568:	dd803815 	stw	r22,224(sp)
    156c:	dd803e15 	stw	r22,248(sp)
    1570:	dd804015 	stw	r22,256(sp)
    1574:	dd804215 	stw	r22,264(sp)
    1578:	dd804615 	stw	r22,280(sp)
    157c:	ddc00017 	ldw	r23,0(sp)
    1580:	dd804a15 	stw	r22,296(sp)
    1584:	dd805115 	stw	r22,324(sp)
    1588:	bdc01404 	addi	r23,r23,80
    158c:	dd805615 	stw	r22,344(sp)
    1590:	dd805b15 	stw	r22,364(sp)
    1594:	d9400115 	stw	r5,4(sp)
    1598:	dd801715 	stw	r22,92(sp)
    159c:	dd801d15 	stw	r22,116(sp)
    15a0:	dd801f15 	stw	r22,124(sp)
    15a4:	dd802115 	stw	r22,132(sp)
    15a8:	dd802515 	stw	r22,148(sp)
    15ac:	dd802a15 	stw	r22,168(sp)
    15b0:	dd803015 	stw	r22,192(sp)
    15b4:	dd803415 	stw	r22,208(sp)
    15b8:	dd803915 	stw	r22,228(sp)
    15bc:	dd803f15 	stw	r22,252(sp)
    15c0:	dd804115 	stw	r22,260(sp)
    15c4:	dd804315 	stw	r22,268(sp)
    15c8:	dd804715 	stw	r22,284(sp)
    15cc:	dd804b15 	stw	r22,300(sp)
    15d0:	dd805215 	stw	r22,328(sp)
    15d4:	dd805715 	stw	r22,348(sp)
    15d8:	dd805c15 	stw	r22,368(sp)
    15dc:	ddc01415 	stw	r23,80(sp)
    15e0:	d8001515 	stw	zero,84(sp)
    15e4:	d9000117 	ldw	r4,4(sp)
    15e8:	01803ff4 	movhi	r6,255
    15ec:	31803fc4 	addi	r6,r6,255
    15f0:	023fc074 	movhi	r8,65281
    15f4:	423fc004 	addi	r8,r8,-256
    15f8:	20800017 	ldw	r2,0(r4)
    15fc:	20c00117 	ldw	r3,4(r4)
    1600:	db800b17 	ldw	r14,44(sp)
    1604:	1017883a 	mov	r11,r2
    1608:	1988703a 	and	r4,r3,r6
    160c:	598a703a 	and	r5,r11,r6
    1610:	201ad63a 	srli	r13,r4,24
    1614:	2818923a 	slli	r12,r5,8
    1618:	d8c01615 	stw	r3,88(sp)
    161c:	d8801715 	stw	r2,92(sp)
    1620:	1a04703a 	and	r2,r3,r8
    1624:	5a06703a 	and	r3,r11,r8
    1628:	6b0eb03a 	or	r7,r13,r12
    162c:	1816963a 	slli	r11,r3,24
    1630:	db000a17 	ldw	r12,40(sp)
    1634:	1014d23a 	srli	r10,r2,8
    1638:	1812d23a 	srli	r9,r3,8
    163c:	6027883a 	mov	r19,r12
    1640:	5a90b03a 	or	r8,r11,r10
    1644:	200c923a 	slli	r6,r4,8
    1648:	7006d3ba 	srli	r3,r14,14
    164c:	7004d4ba 	srli	r2,r14,18
    1650:	601494ba 	slli	r10,r12,18
    1654:	600893ba 	slli	r4,r12,14
    1658:	7025883a 	mov	r18,r14
    165c:	9816d4ba 	srli	r11,r19,18
    1660:	701e94ba 	slli	r15,r14,18
    1664:	6018d3ba 	srli	r12,r12,14
    1668:	701a93ba 	slli	r13,r14,14
    166c:	9820d27a 	srli	r16,r19,9
    1670:	701c95fa 	slli	r14,r14,23
    1674:	50d4b03a 	or	r10,r10,r3
    1678:	2088b03a 	or	r4,r4,r2
    167c:	dd401517 	ldw	r21,84(sp)
    1680:	7b1eb03a 	or	r15,r15,r12
    1684:	6adab03a 	or	r13,r13,r11
    1688:	da801d15 	stw	r10,116(sp)
    168c:	d9001f15 	stw	r4,124(sp)
    1690:	981495fa 	slli	r10,r19,23
    1694:	00bfffd4 	movui	r2,65535
    1698:	49e6b03a 	or	r19,r9,r7
    169c:	83a0b03a 	or	r16,r16,r14
    16a0:	9022d27a 	srli	r17,r18,9
    16a4:	41a4b03a 	or	r18,r8,r6
    16a8:	909c703a 	and	r14,r18,r2
    16ac:	7b4cf03a 	xor	r6,r15,r13
    16b0:	013ffff4 	movhi	r4,65535
    16b4:	21000004 	addi	r4,r4,0
    16b8:	dc002115 	stw	r16,132(sp)
    16bc:	d8c01f17 	ldw	r3,124(sp)
    16c0:	dbc01c15 	stw	r15,112(sp)
    16c4:	989e703a 	and	r15,r19,r2
    16c8:	d8801d17 	ldw	r2,116(sp)
    16cc:	a82a90fa 	slli	r21,r21,3
    16d0:	db401e15 	stw	r13,120(sp)
    16d4:	991a703a 	and	r13,r19,r4
    16d8:	dcc02117 	ldw	r19,132(sp)
    16dc:	8aa2b03a 	or	r17,r17,r10
    16e0:	10cef03a 	xor	r7,r2,r3
    16e4:	da000a17 	ldw	r8,40(sp)
    16e8:	da400b17 	ldw	r9,44(sp)
    16ec:	05800034 	movhi	r22,0
    16f0:	b5900404 	addi	r22,r22,16400
    16f4:	3444f03a 	xor	r2,r6,r17
    16f8:	3cc6f03a 	xor	r3,r7,r19
    16fc:	dc000c17 	ldw	r16,48(sp)
    1700:	dcc00e17 	ldw	r19,56(sp)
    1704:	dd401815 	stw	r21,96(sp)
    1708:	dc402015 	stw	r17,128(sp)
    170c:	ada3883a 	add	r17,r21,r22
    1710:	dd400f17 	ldw	r21,60(sp)
    1714:	9118703a 	and	r12,r18,r4
    1718:	024a303a 	nor	r5,zero,r9
    171c:	0208303a 	nor	r4,zero,r8
    1720:	24cc703a 	and	r6,r4,r19
    1724:	2d4e703a 	and	r7,r5,r21
    1728:	4410703a 	and	r8,r8,r16
    172c:	d9400317 	ldw	r5,12(sp)
    1730:	d9000217 	ldw	r4,8(sp)
    1734:	dc000217 	ldw	r16,8(sp)
    1738:	ddc00d17 	ldw	r23,52(sp)
    173c:	7016d43a 	srli	r11,r14,16
    1740:	282697ba 	slli	r19,r5,30
    1744:	2008913a 	slli	r4,r4,4
    1748:	8020d0ba 	srli	r16,r16,2
    174c:	8d800017 	ldw	r22,0(r17)
    1750:	4dd2703a 	and	r9,r9,r23
    1754:	282e913a 	slli	r23,r5,4
    1758:	dac01915 	stw	r11,100(sp)
    175c:	d9002615 	stw	r4,152(sp)
    1760:	dc002b15 	stw	r16,172(sp)
    1764:	dcc02c15 	stw	r19,176(sp)
    1768:	dd401017 	ldw	r21,64(sp)
    176c:	dd802215 	stw	r22,136(sp)
    1770:	dc000217 	ldw	r16,8(sp)
    1774:	6824943a 	slli	r18,r13,16
    1778:	6014d43a 	srli	r10,r12,16
    177c:	7816943a 	slli	r11,r15,16
    1780:	ddc02715 	stw	r23,156(sp)
    1784:	2826d0ba 	srli	r19,r5,2
    1788:	dd801117 	ldw	r22,68(sp)
    178c:	ddc01917 	ldw	r23,100(sp)
    1790:	1549883a 	add	r4,r2,r21
    1794:	8020d73a 	srli	r16,r16,28
    1798:	dd400217 	ldw	r21,8(sp)
    179c:	92a8b03a 	or	r20,r18,r10
    17a0:	dcc02d15 	stw	r19,180(sp)
    17a4:	4194f03a 	xor	r10,r8,r6
    17a8:	bae6b03a 	or	r19,r23,r11
    17ac:	da002c17 	ldw	r8,176(sp)
    17b0:	49d6f03a 	xor	r11,r9,r7
    17b4:	2838d73a 	srli	fp,r5,28
    17b8:	d9c02b17 	ldw	r7,172(sp)
    17bc:	1d8b883a 	add	r5,r3,r22
    17c0:	d8c00317 	ldw	r3,12(sp)
    17c4:	dc002815 	stw	r16,160(sp)
    17c8:	a82a97ba 	slli	r21,r21,30
    17cc:	20a1803a 	cmpltu	r16,r4,r2
    17d0:	d8800217 	ldw	r2,8(sp)
    17d4:	7024943a 	slli	r18,r14,16
    17d8:	3a0eb03a 	or	r7,r7,r8
    17dc:	db800417 	ldw	r14,16(sp)
    17e0:	1810d1fa 	srli	r8,r3,7
    17e4:	db002817 	ldw	r12,160(sp)
    17e8:	ddc02717 	ldw	r23,156(sp)
    17ec:	1013883a 	mov	r9,r2
    17f0:	dd402e15 	stw	r21,184(sp)
    17f4:	d9802617 	ldw	r6,152(sp)
    17f8:	bb2eb03a 	or	r23,r23,r12
    17fc:	da003115 	stw	r8,196(sp)
    1800:	db002d17 	ldw	r12,180(sp)
    1804:	4b90703a 	and	r8,r9,r14
    1808:	db802e17 	ldw	r14,184(sp)
    180c:	814b883a 	add	r5,r16,r5
    1810:	682ad43a 	srli	r21,r13,16
    1814:	dd800617 	ldw	r22,24(sp)
    1818:	ddc02415 	stw	r23,144(sp)
    181c:	dbc00517 	ldw	r15,20(sp)
    1820:	ddc00717 	ldw	r23,28(sp)
    1824:	1020d1fa 	srli	r16,r2,7
    1828:	181a967a 	slli	r13,r3,25
    182c:	3738b03a 	or	fp,r6,fp
    1830:	8c400117 	ldw	r17,4(r17)
    1834:	6398b03a 	or	r12,r12,r14
    1838:	db002915 	stw	r12,164(sp)
    183c:	df002515 	stw	fp,148(sp)
    1840:	1038967a 	slli	fp,r2,25
    1844:	2285883a 	add	r2,r4,r10
    1848:	4d8c703a 	and	r6,r9,r22
    184c:	1119803a 	cmpltu	r12,r2,r4
    1850:	1bd2703a 	and	r9,r3,r15
    1854:	a488b03a 	or	r4,r20,r18
    1858:	da802917 	ldw	r10,164(sp)
    185c:	d9c02a15 	stw	r7,168(sp)
    1860:	8360b03a 	or	r16,r16,r13
    1864:	1dce703a 	and	r7,r3,r23
    1868:	2ac7883a 	add	r3,r5,r11
    186c:	d9402417 	ldw	r5,144(sp)
    1870:	ace8b03a 	or	r20,r21,r19
    1874:	dc402315 	stw	r17,140(sp)
    1878:	dc003015 	stw	r16,192(sp)
    187c:	d9001a15 	stw	r4,104(sp)
    1880:	60c7883a 	add	r3,r12,r3
    1884:	dac00417 	ldw	r11,16(sp)
    1888:	db000617 	ldw	r12,24(sp)
    188c:	dd001b15 	stw	r20,108(sp)
    1890:	dcc00517 	ldw	r19,20(sp)
    1894:	2aa0f03a 	xor	r16,r5,r10
    1898:	da801a17 	ldw	r10,104(sp)
    189c:	419cf03a 	xor	r14,r8,r6
    18a0:	dc803117 	ldw	r18,196(sp)
    18a4:	da002217 	ldw	r8,136(sp)
    18a8:	5b08703a 	and	r4,r11,r12
    18ac:	49def03a 	xor	r15,r9,r7
    18b0:	9dca703a 	and	r5,r19,r23
    18b4:	dd802517 	ldw	r22,148(sp)
    18b8:	ddc02a17 	ldw	r23,168(sp)
    18bc:	da402317 	ldw	r9,140(sp)
    18c0:	5019883a 	mov	r12,r10
    18c4:	7114f03a 	xor	r10,r14,r4
    18c8:	db803017 	ldw	r14,192(sp)
    18cc:	120d883a 	add	r6,r2,r8
    18d0:	9738b03a 	or	fp,r18,fp
    18d4:	b5e2f03a 	xor	r17,r22,r23
    18d8:	30a5803a 	cmpltu	r18,r6,r2
    18dc:	8710f03a 	xor	r8,r16,fp
    18e0:	1a4f883a 	add	r7,r3,r9
    18e4:	dc000817 	ldw	r16,32(sp)
    18e8:	3305883a 	add	r2,r6,r12
    18ec:	8b92f03a 	xor	r9,r17,r14
    18f0:	4289883a 	add	r4,r8,r10
    18f4:	dcc00917 	ldw	r19,36(sp)
    18f8:	7956f03a 	xor	r11,r15,r5
    18fc:	91cf883a 	add	r7,r18,r7
    1900:	4acb883a 	add	r5,r9,r11
    1904:	119f803a 	cmpltu	r15,r2,r6
    1908:	3d07883a 	add	r3,r7,r20
    190c:	221d803a 	cmpltu	r14,r4,r8
    1910:	1011883a 	mov	r8,r2
    1914:	78df883a 	add	r15,r15,r3
    1918:	8085883a 	add	r2,r16,r2
    191c:	4109883a 	add	r4,r8,r4
    1920:	715d883a 	add	r14,r14,r5
    1924:	9bc7883a 	add	r3,r19,r15
    1928:	dd400e17 	ldw	r21,56(sp)
    192c:	dd800617 	ldw	r22,24(sp)
    1930:	140f803a 	cmpltu	r7,r2,r16
    1934:	7b8b883a 	add	r5,r15,r14
    1938:	ddc00f17 	ldw	r23,60(sp)
    193c:	da400c17 	ldw	r9,48(sp)
    1940:	da800417 	ldw	r10,16(sp)
    1944:	dac00d17 	ldw	r11,52(sp)
    1948:	220d803a 	cmpltu	r6,r4,r8
    194c:	db000517 	ldw	r12,20(sp)
    1950:	da000717 	ldw	r8,28(sp)
    1954:	db800a17 	ldw	r14,40(sp)
    1958:	dbc00217 	ldw	r15,8(sp)
    195c:	dc000b17 	ldw	r16,44(sp)
    1960:	dc800317 	ldw	r18,12(sp)
    1964:	dd401015 	stw	r21,64(sp)
    1968:	dd800815 	stw	r22,32(sp)
    196c:	df002f15 	stw	fp,188(sp)
    1970:	ddc01115 	stw	r23,68(sp)
    1974:	da000915 	stw	r8,36(sp)
    1978:	da400e15 	stw	r9,56(sp)
    197c:	da800615 	stw	r10,24(sp)
    1980:	dac00f15 	stw	r11,60(sp)
    1984:	db000715 	stw	r12,28(sp)
    1988:	db800c15 	stw	r14,48(sp)
    198c:	dbc00415 	stw	r15,16(sp)
    1990:	dc000d15 	stw	r16,52(sp)
    1994:	dc800515 	stw	r18,20(sp)
    1998:	d8800a15 	stw	r2,40(sp)
    199c:	d8800117 	ldw	r2,4(sp)
    19a0:	dcc01517 	ldw	r19,84(sp)
    19a4:	dd401817 	ldw	r21,96(sp)
    19a8:	dd801417 	ldw	r22,80(sp)
    19ac:	38cf883a 	add	r7,r7,r3
    19b0:	d8c01a17 	ldw	r3,104(sp)
    19b4:	10800204 	addi	r2,r2,8
    19b8:	ada3883a 	add	r17,r21,r22
    19bc:	314d883a 	add	r6,r6,r5
    19c0:	9cc00044 	addi	r19,r19,1
    19c4:	d8800115 	stw	r2,4(sp)
    19c8:	008003c4 	movi	r2,15
    19cc:	dcc01515 	stw	r19,84(sp)
    19d0:	d9000215 	stw	r4,8(sp)
    19d4:	8d000115 	stw	r20,4(r17)
    19d8:	88c00015 	stw	r3,0(r17)
    19dc:	d9c00b15 	stw	r7,44(sp)
    19e0:	d9800315 	stw	r6,12(sp)
    19e4:	14feff0e 	bge	r2,r19,15e4 <SHA512_Transform+0x180>
    19e8:	d9001517 	ldw	r4,84(sp)
    19ec:	d9801417 	ldw	r6,80(sp)
    19f0:	d9c01417 	ldw	r7,80(sp)
    19f4:	20800384 	addi	r2,r4,14
    19f8:	108003cc 	andi	r2,r2,15
    19fc:	100490fa 	slli	r2,r2,3
    1a00:	21400044 	addi	r5,r4,1
    1a04:	28c003cc 	andi	r3,r5,15
    1a08:	1185883a 	add	r2,r2,r6
    1a0c:	15000017 	ldw	r20,0(r2)
    1a10:	15400117 	ldw	r21,4(r2)
    1a14:	180690fa 	slli	r3,r3,3
    1a18:	21800244 	addi	r6,r4,9
    1a1c:	a80490fa 	slli	r2,r21,3
    1a20:	a008d77a 	srli	r4,r20,29
    1a24:	19c7883a 	add	r3,r3,r7
    1a28:	1a000017 	ldw	r8,0(r3)
    1a2c:	18c00117 	ldw	r3,4(r3)
    1a30:	2088b03a 	or	r4,r4,r2
    1a34:	d9004115 	stw	r4,260(sp)
    1a38:	d9000a17 	ldw	r4,40(sp)
    1a3c:	d8c01315 	stw	r3,76(sp)
    1a40:	d9403215 	stw	r5,200(sp)
    1a44:	a806d4fa 	srli	r3,r21,19
    1a48:	a00a937a 	slli	r5,r20,13
    1a4c:	a81696ba 	slli	r11,r21,26
    1a50:	a00ed1ba 	srli	r7,r20,6
    1a54:	200893ba 	slli	r4,r4,14
    1a58:	28cab03a 	or	r5,r5,r3
    1a5c:	d9403f15 	stw	r5,252(sp)
    1a60:	dc001317 	ldw	r16,76(sp)
    1a64:	dcc01317 	ldw	r19,76(sp)
    1a68:	dd801317 	ldw	r22,76(sp)
    1a6c:	d8800a17 	ldw	r2,40(sp)
    1a70:	d8c00b17 	ldw	r3,44(sp)
    1a74:	d9400b17 	ldw	r5,44(sp)
    1a78:	d9004815 	stw	r4,288(sp)
    1a7c:	59c8b03a 	or	r4,r11,r7
    1a80:	d9c01317 	ldw	r7,76(sp)
    1a84:	a018d4fa 	srli	r12,r20,19
    1a88:	a01490fa 	slli	r10,r20,3
    1a8c:	a81c937a 	slli	r14,r21,13
    1a90:	a81ad77a 	srli	r13,r21,29
    1a94:	318003cc 	andi	r6,r6,15
    1a98:	da401417 	ldw	r9,80(sp)
    1a9c:	401e97fa 	slli	r15,r8,31
    1aa0:	4024963a 	slli	r18,r8,24
    1aa4:	402ed1fa 	srli	r23,r8,7
    1aa8:	1806d3ba 	srli	r3,r3,14
    1aac:	8020d07a 	srli	r16,r16,1
    1ab0:	9826d23a 	srli	r19,r19,8
    1ab4:	b02c967a 	slli	r22,r22,25
    1ab8:	100494ba 	slli	r2,r2,18
    1abc:	280ad4ba 	srli	r5,r5,18
    1ac0:	300c90fa 	slli	r6,r6,3
    1ac4:	380e97fa 	slli	r7,r7,31
    1ac8:	6a9ab03a 	or	r13,r13,r10
    1acc:	731cb03a 	or	r14,r14,r12
    1ad0:	324d883a 	add	r6,r6,r9
    1ad4:	da001215 	stw	r8,72(sp)
    1ad8:	dbc03515 	stw	r15,212(sp)
    1adc:	dc003615 	stw	r16,216(sp)
    1ae0:	dc803a15 	stw	r18,232(sp)
    1ae4:	dcc03b15 	stw	r19,236(sp)
    1ae8:	dd803c15 	stw	r22,240(sp)
    1aec:	ddc03d15 	stw	r23,244(sp)
    1af0:	d8804415 	stw	r2,272(sp)
    1af4:	d8c04515 	stw	r3,276(sp)
    1af8:	d9404915 	stw	r5,292(sp)
    1afc:	db803e15 	stw	r14,248(sp)
    1b00:	db404015 	stw	r13,256(sp)
    1b04:	32000017 	ldw	r8,0(r6)
    1b08:	d9c03715 	stw	r7,220(sp)
    1b0c:	dd801517 	ldw	r22,84(sp)
    1b10:	db003517 	ldw	r12,212(sp)
    1b14:	ddc03b17 	ldw	r23,236(sp)
    1b18:	b58003cc 	andi	r22,r22,15
    1b1c:	dd804e15 	stw	r22,312(sp)
    1b20:	b03890fa 	slli	fp,r22,3
    1b24:	dd803617 	ldw	r22,216(sp)
    1b28:	da801217 	ldw	r10,72(sp)
    1b2c:	32400117 	ldw	r9,4(r6)
    1b30:	6598b03a 	or	r12,r12,r22
    1b34:	dd803a17 	ldw	r22,232(sp)
    1b38:	dac01317 	ldw	r11,76(sp)
    1b3c:	5022d23a 	srli	r17,r10,8
    1b40:	b5ecb03a 	or	r22,r22,r23
    1b44:	ddc04417 	ldw	r23,272(sp)
    1b48:	db800b17 	ldw	r14,44(sp)
    1b4c:	dbc00a17 	ldw	r15,40(sp)
    1b50:	b8eeb03a 	or	r23,r23,r3
    1b54:	dc000b17 	ldw	r16,44(sp)
    1b58:	dcc00a17 	ldw	r19,40(sp)
    1b5c:	d9804117 	ldw	r6,260(sp)
    1b60:	5028d07a 	srli	r20,r10,1
    1b64:	ddc04315 	stw	r23,268(sp)
    1b68:	da803e17 	ldw	r10,248(sp)
    1b6c:	ddc03f17 	ldw	r23,252(sp)
    1b70:	a80ad1ba 	srli	r5,r21,6
    1b74:	5344f03a 	xor	r2,r10,r13
    1b78:	b986f03a 	xor	r3,r23,r6
    1b7c:	980ed4ba 	srli	r7,r19,18
    1b80:	d9803717 	ldw	r6,220(sp)
    1b84:	582a963a 	slli	r21,r11,24
    1b88:	702494ba 	slli	r18,r14,18
    1b8c:	dac04917 	ldw	r11,292(sp)
    1b90:	781cd3ba 	srli	r14,r15,14
    1b94:	da804817 	ldw	r10,288(sp)
    1b98:	801e93ba 	slli	r15,r16,14
    1b9c:	9826d27a 	srli	r19,r19,9
    1ba0:	802095fa 	slli	r16,r16,23
    1ba4:	db003415 	stw	r12,208(sp)
    1ba8:	dd803915 	stw	r22,228(sp)
    1bac:	db000b17 	ldw	r12,44(sp)
    1bb0:	dd800a17 	ldw	r22,40(sp)
    1bb4:	52d4b03a 	or	r10,r10,r11
    1bb8:	3528b03a 	or	r20,r6,r20
    1bbc:	ac6ab03a 	or	r21,r21,r17
    1bc0:	93a4b03a 	or	r18,r18,r14
    1bc4:	79deb03a 	or	r15,r15,r7
    1bc8:	9c26b03a 	or	r19,r19,r16
    1bcc:	da804715 	stw	r10,284(sp)
    1bd0:	dd003315 	stw	r20,204(sp)
    1bd4:	dd403815 	stw	r21,224(sp)
    1bd8:	dc804215 	stw	r18,264(sp)
    1bdc:	dbc04615 	stw	r15,280(sp)
    1be0:	b01495fa 	slli	r10,r22,23
    1be4:	ddc03d17 	ldw	r23,244(sp)
    1be8:	dd803c17 	ldw	r22,240(sp)
    1bec:	d9c01317 	ldw	r7,76(sp)
    1bf0:	6016d27a 	srli	r11,r12,9
    1bf4:	dcc04b15 	stw	r19,300(sp)
    1bf8:	dbc01517 	ldw	r15,84(sp)
    1bfc:	196af03a 	xor	r21,r3,r5
    1c00:	db801417 	ldw	r14,80(sp)
    1c04:	5a96b03a 	or	r11,r11,r10
    1c08:	d8c04317 	ldw	r3,268(sp)
    1c0c:	da804717 	ldw	r10,284(sp)
    1c10:	781e90fa 	slli	r15,r15,3
    1c14:	b5d8b03a 	or	r12,r22,r23
    1c18:	1128f03a 	xor	r20,r2,r4
    1c1c:	dc003317 	ldw	r16,204(sp)
    1c20:	dc803817 	ldw	r18,224(sp)
    1c24:	ddc03417 	ldw	r23,208(sp)
    1c28:	d8803917 	ldw	r2,228(sp)
    1c2c:	381ad1fa 	srli	r13,r7,7
    1c30:	dcc04217 	ldw	r19,264(sp)
    1c34:	dd804617 	ldw	r22,280(sp)
    1c38:	dac04a15 	stw	r11,296(sp)
    1c3c:	e3b9883a 	add	fp,fp,r14
    1c40:	1a8ef03a 	xor	r7,r3,r10
    1c44:	dbc04c15 	stw	r15,304(sp)
    1c48:	db800a17 	ldw	r14,40(sp)
    1c4c:	4d47883a 	add	r3,r9,r21
    1c50:	dd404a17 	ldw	r21,296(sp)
    1c54:	b88af03a 	xor	r5,r23,r2
    1c58:	8488f03a 	xor	r4,r16,r18
    1c5c:	ddc04c17 	ldw	r23,304(sp)
    1c60:	4505883a 	add	r2,r8,r20
    1c64:	9d8cf03a 	xor	r6,r19,r22
    1c68:	2320f03a 	xor	r16,r4,r12
    1c6c:	2b48f03a 	xor	r4,r5,r13
    1c70:	0394303a 	nor	r10,zero,r14
    1c74:	d9400a17 	ldw	r5,40(sp)
    1c78:	121d803a 	cmpltu	r14,r2,r8
    1c7c:	d9001315 	stw	r4,76(sp)
    1c80:	3550f03a 	xor	r8,r6,r21
    1c84:	01000034 	movhi	r4,0
    1c88:	21100404 	addi	r4,r4,16400
    1c8c:	d9800c17 	ldw	r6,48(sp)
    1c90:	b92f883a 	add	r23,r23,r4
    1c94:	ddc04d15 	stw	r23,308(sp)
    1c98:	ddc00217 	ldw	r23,8(sp)
    1c9c:	dc001215 	stw	r16,72(sp)
    1ca0:	29a0703a 	and	r16,r5,r6
    1ca4:	d9400217 	ldw	r5,8(sp)
    1ca8:	dbc00b17 	ldw	r15,44(sp)
    1cac:	b82e913a 	slli	r23,r23,4
    1cb0:	dd804b17 	ldw	r22,300(sp)
    1cb4:	db000f17 	ldw	r12,60(sp)
    1cb8:	280ad0ba 	srli	r5,r5,2
    1cbc:	df004f15 	stw	fp,316(sp)
    1cc0:	03d6303a 	nor	r11,zero,r15
    1cc4:	ddc05315 	stw	r23,332(sp)
    1cc8:	e4800017 	ldw	r18,0(fp)
    1ccc:	3d92f03a 	xor	r9,r7,r22
    1cd0:	5b1e703a 	and	r15,r11,r12
    1cd4:	e4c00117 	ldw	r19,4(fp)
    1cd8:	d9000317 	ldw	r4,12(sp)
    1cdc:	d9c00e17 	ldw	r7,56(sp)
    1ce0:	dd400b17 	ldw	r21,44(sp)
    1ce4:	dd800d17 	ldw	r22,52(sp)
    1ce8:	d9405815 	stw	r5,352(sp)
    1cec:	dac01217 	ldw	r11,72(sp)
    1cf0:	70c7883a 	add	r3,r14,r3
    1cf4:	51dc703a 	and	r14,r10,r7
    1cf8:	12cd883a 	add	r6,r2,r11
    1cfc:	da804d17 	ldw	r10,308(sp)
    1d00:	dac00217 	ldw	r11,8(sp)
    1d04:	d9c01017 	ldw	r7,64(sp)
    1d08:	55000017 	ldw	r20,0(r10)
    1d0c:	db000317 	ldw	r12,12(sp)
    1d10:	da800317 	ldw	r10,12(sp)
    1d14:	581697ba 	slli	r11,r11,30
    1d18:	ada2703a 	and	r17,r21,r22
    1d1c:	203897ba 	slli	fp,r4,30
    1d20:	202cd73a 	srli	r22,r4,28
    1d24:	41c9883a 	add	r4,r8,r7
    1d28:	dac05a15 	stw	r11,360(sp)
    1d2c:	6018913a 	slli	r12,r12,4
    1d30:	2217803a 	cmpltu	r11,r4,r8
    1d34:	5014d0ba 	srli	r10,r10,2
    1d38:	da005317 	ldw	r8,332(sp)
    1d3c:	db005415 	stw	r12,336(sp)
    1d40:	da805915 	stw	r10,356(sp)
    1d44:	db001117 	ldw	r12,68(sp)
    1d48:	3095803a 	cmpltu	r10,r6,r2
    1d4c:	45acb03a 	or	r22,r8,r22
    1d50:	d8800217 	ldw	r2,8(sp)
    1d54:	ddc00217 	ldw	r23,8(sp)
    1d58:	dd805215 	stw	r22,328(sp)
    1d5c:	dd800417 	ldw	r22,16(sp)
    1d60:	4b0b883a 	add	r5,r9,r12
    1d64:	b82ed73a 	srli	r23,r23,28
    1d68:	8398f03a 	xor	r12,r16,r14
    1d6c:	101d883a 	mov	r14,r2
    1d70:	7021883a 	mov	r16,r14
    1d74:	759c703a 	and	r14,r14,r22
    1d78:	dd800617 	ldw	r22,24(sp)
    1d7c:	ddc05515 	stw	r23,340(sp)
    1d80:	ddc01317 	ldw	r23,76(sp)
    1d84:	8590703a 	and	r8,r16,r22
    1d88:	dd805517 	ldw	r22,340(sp)
    1d8c:	dc005417 	ldw	r16,336(sp)
    1d90:	1dcf883a 	add	r7,r3,r23
    1d94:	d8c00317 	ldw	r3,12(sp)
    1d98:	85a0b03a 	or	r16,r16,r22
    1d9c:	dc005115 	stw	r16,324(sp)
    1da0:	dd805917 	ldw	r22,356(sp)
    1da4:	dc005a17 	ldw	r16,360(sp)
    1da8:	da405817 	ldw	r9,352(sp)
    1dac:	8bdaf03a 	xor	r13,r17,r15
    1db0:	b42cb03a 	or	r22,r22,r16
    1db4:	594b883a 	add	r5,r11,r5
    1db8:	1822967a 	slli	r17,r3,25
    1dbc:	1816d1fa 	srli	r11,r3,7
    1dc0:	102ed1fa 	srli	r23,r2,7
    1dc4:	dd805615 	stw	r22,344(sp)
    1dc8:	dd800517 	ldw	r22,20(sp)
    1dcc:	51cf883a 	add	r7,r10,r7
    1dd0:	da804d17 	ldw	r10,308(sp)
    1dd4:	4f38b03a 	or	fp,r9,fp
    1dd8:	1d9e703a 	and	r15,r3,r22
    1ddc:	bc6eb03a 	or	r23,r23,r17
    1de0:	dd800717 	ldw	r22,28(sp)
    1de4:	df005715 	stw	fp,348(sp)
    1de8:	dac05d15 	stw	r11,372(sp)
    1dec:	55400117 	ldw	r21,4(r10)
    1df0:	99d7883a 	add	r11,r19,r7
    1df4:	ddc05c15 	stw	r23,368(sp)
    1df8:	9195883a 	add	r10,r18,r6
    1dfc:	d9c05617 	ldw	r7,344(sp)
    1e00:	d9805117 	ldw	r6,324(sp)
    1e04:	1038967a 	slli	fp,r2,25
    1e08:	2305883a 	add	r2,r4,r12
    1e0c:	1d92703a 	and	r9,r3,r22
    1e10:	1121803a 	cmpltu	r16,r2,r4
    1e14:	2b47883a 	add	r3,r5,r13
    1e18:	7218f03a 	xor	r12,r14,r8
    1e1c:	80c7883a 	add	r3,r16,r3
    1e20:	da005717 	ldw	r8,348(sp)
    1e24:	31e0f03a 	xor	r16,r6,r7
    1e28:	d9c05217 	ldw	r7,328(sp)
    1e2c:	5489803a 	cmpltu	r4,r10,r18
    1e30:	dcc00617 	ldw	r19,24(sp)
    1e34:	d9800717 	ldw	r6,28(sp)
    1e38:	dc800417 	ldw	r18,16(sp)
    1e3c:	dd805d17 	ldw	r22,372(sp)
    1e40:	ddc00517 	ldw	r23,20(sp)
    1e44:	22cb883a 	add	r5,r4,r11
    1e48:	d9406d15 	stw	r5,436(sp)
    1e4c:	3a22f03a 	xor	r17,r7,r8
    1e50:	1d4f883a 	add	r7,r3,r21
    1e54:	dd405c17 	ldw	r21,368(sp)
    1e58:	94c8703a 	and	r4,r18,r19
    1e5c:	7a5af03a 	xor	r13,r15,r9
    1e60:	b98a703a 	and	r5,r23,r6
    1e64:	b738b03a 	or	fp,r22,fp
    1e68:	150d883a 	add	r6,r2,r20
    1e6c:	501d883a 	mov	r14,r10
    1e70:	dbc06d17 	ldw	r15,436(sp)
    1e74:	30a5803a 	cmpltu	r18,r6,r2
    1e78:	8710f03a 	xor	r8,r16,fp
    1e7c:	3385883a 	add	r2,r6,r14
    1e80:	6114f03a 	xor	r10,r12,r4
    1e84:	dd800817 	ldw	r22,32(sp)
    1e88:	4289883a 	add	r4,r8,r10
    1e8c:	6956f03a 	xor	r11,r13,r5
    1e90:	91cf883a 	add	r7,r18,r7
    1e94:	8d52f03a 	xor	r9,r17,r21
    1e98:	119b803a 	cmpltu	r13,r2,r6
    1e9c:	d9800917 	ldw	r6,36(sp)
    1ea0:	4acb883a 	add	r5,r9,r11
    1ea4:	3bc7883a 	add	r3,r7,r15
    1ea8:	2219803a 	cmpltu	r12,r4,r8
    1eac:	1011883a 	mov	r8,r2
    1eb0:	4109883a 	add	r4,r8,r4
    1eb4:	68db883a 	add	r13,r13,r3
    1eb8:	6159883a 	add	r12,r12,r5
    1ebc:	b085883a 	add	r2,r22,r2
    1ec0:	da400617 	ldw	r9,24(sp)
    1ec4:	da800f17 	ldw	r10,60(sp)
    1ec8:	dac00717 	ldw	r11,28(sp)
    1ecc:	3347883a 	add	r3,r6,r13
    1ed0:	6b0b883a 	add	r5,r13,r12
    1ed4:	220d803a 	cmpltu	r6,r4,r8
    1ed8:	db000c17 	ldw	r12,48(sp)
    1edc:	da000e17 	ldw	r8,56(sp)
    1ee0:	dc000417 	ldw	r16,16(sp)
    1ee4:	dc800d17 	ldw	r18,52(sp)
    1ee8:	dcc00517 	ldw	r19,20(sp)
    1eec:	dd400a17 	ldw	r21,40(sp)
    1ef0:	158f803a 	cmpltu	r7,r2,r22
    1ef4:	dd800217 	ldw	r22,8(sp)
    1ef8:	da001015 	stw	r8,64(sp)
    1efc:	da400815 	stw	r9,32(sp)
    1f00:	da801115 	stw	r10,68(sp)
    1f04:	df005b15 	stw	fp,364(sp)
    1f08:	dac00915 	stw	r11,36(sp)
    1f0c:	db000e15 	stw	r12,56(sp)
    1f10:	dc000615 	stw	r16,24(sp)
    1f14:	dc800f15 	stw	r18,60(sp)
    1f18:	dcc00715 	stw	r19,28(sp)
    1f1c:	dd400c15 	stw	r21,48(sp)
    1f20:	dd800415 	stw	r22,16(sp)
    1f24:	ddc00b17 	ldw	r23,44(sp)
    1f28:	da000317 	ldw	r8,12(sp)
    1f2c:	da404f17 	ldw	r9,316(sp)
    1f30:	da803217 	ldw	r10,200(sp)
    1f34:	38cf883a 	add	r7,r7,r3
    1f38:	314d883a 	add	r6,r6,r5
    1f3c:	d8800a15 	stw	r2,40(sp)
    1f40:	008013c4 	movi	r2,79
    1f44:	ddc00d15 	stw	r23,52(sp)
    1f48:	da000515 	stw	r8,20(sp)
    1f4c:	d9000215 	stw	r4,8(sp)
    1f50:	4bc00115 	stw	r15,4(r9)
    1f54:	4b800015 	stw	r14,0(r9)
    1f58:	d9c00b15 	stw	r7,44(sp)
    1f5c:	d9800315 	stw	r6,12(sp)
    1f60:	da801515 	stw	r10,84(sp)
    1f64:	12bea00e 	bge	r2,r10,19e8 <SHA512_Transform+0x584>
    1f68:	dac00017 	ldw	r11,0(sp)
    1f6c:	da000217 	ldw	r8,8(sp)
    1f70:	5b000217 	ldw	r12,8(r11)
    1f74:	5c800017 	ldw	r18,0(r11)
    1f78:	db005f15 	stw	r12,380(sp)
    1f7c:	5b800617 	ldw	r14,24(r11)
    1f80:	5d000417 	ldw	r20,16(r11)
    1f84:	6013883a 	mov	r9,r12
    1f88:	db806215 	stw	r14,392(sp)
    1f8c:	5bc00817 	ldw	r15,32(r11)
    1f90:	db000417 	ldw	r12,16(sp)
    1f94:	db800617 	ldw	r14,24(sp)
    1f98:	dbc06415 	stw	r15,400(sp)
    1f9c:	5c000a17 	ldw	r16,40(r11)
    1fa0:	4b15883a 	add	r10,r9,r12
    1fa4:	da400c17 	ldw	r9,48(sp)
    1fa8:	dc006615 	stw	r16,408(sp)
    1fac:	5d800c17 	ldw	r22,48(r11)
    1fb0:	dbc06217 	ldw	r15,392(sp)
    1fb4:	dc000817 	ldw	r16,32(sp)
    1fb8:	dd806915 	stw	r22,420(sp)
    1fbc:	5dc00e17 	ldw	r23,56(r11)
    1fc0:	dd806417 	ldw	r22,400(sp)
    1fc4:	7c19883a 	add	r12,r15,r16
    1fc8:	ddc06b15 	stw	r23,428(sp)
    1fcc:	58800317 	ldw	r2,12(r11)
    1fd0:	5cc00117 	ldw	r19,4(r11)
    1fd4:	ddc00a17 	ldw	r23,40(sp)
    1fd8:	d8806015 	stw	r2,384(sp)
    1fdc:	58c00717 	ldw	r3,28(r11)
    1fe0:	5d400517 	ldw	r21,20(r11)
    1fe4:	9205883a 	add	r2,r18,r8
    1fe8:	d8c06315 	stw	r3,396(sp)
    1fec:	59000917 	ldw	r4,36(r11)
    1ff0:	da006617 	ldw	r8,408(sp)
    1ff4:	d9006515 	stw	r4,404(sp)
    1ff8:	59400b17 	ldw	r5,44(r11)
    1ffc:	a389883a 	add	r4,r20,r14
    2000:	425d883a 	add	r14,r8,r9
    2004:	d9406715 	stw	r5,412(sp)
    2008:	59800d17 	ldw	r6,52(r11)
    200c:	d9806a15 	stw	r6,424(sp)
    2010:	b5cd883a 	add	r6,r22,r23
    2014:	dd806917 	ldw	r22,420(sp)
    2018:	ddc00e17 	ldw	r23,56(sp)
    201c:	59c00f17 	ldw	r7,60(r11)
    2020:	b5d1883a 	add	r8,r22,r23
    2024:	dd806b17 	ldw	r22,428(sp)
    2028:	ddc01017 	ldw	r23,64(sp)
    202c:	d9c06c15 	stw	r7,432(sp)
    2030:	b5e1883a 	add	r16,r22,r23
    2034:	14ad803a 	cmpltu	r22,r2,r18
    2038:	dd805e15 	stw	r22,376(sp)
    203c:	ddc00317 	ldw	r23,12(sp)
    2040:	dd806017 	ldw	r22,384(sp)
    2044:	dc805f17 	ldw	r18,380(sp)
    2048:	9dc7883a 	add	r3,r19,r23
    204c:	ddc00517 	ldw	r23,20(sp)
    2050:	54a7803a 	cmpltu	r19,r10,r18
    2054:	2525803a 	cmpltu	r18,r4,r20
    2058:	b5d7883a 	add	r11,r22,r23
    205c:	dd800717 	ldw	r22,28(sp)
    2060:	dc806115 	stw	r18,388(sp)
    2064:	dc806317 	ldw	r18,396(sp)
    2068:	ad8b883a 	add	r5,r21,r22
    206c:	dd400917 	ldw	r21,36(sp)
    2070:	dd806417 	ldw	r22,400(sp)
    2074:	ddc06517 	ldw	r23,404(sp)
    2078:	955b883a 	add	r13,r18,r21
    207c:	35ab803a 	cmpltu	r21,r6,r22
    2080:	dd806617 	ldw	r22,408(sp)
    2084:	dc800b17 	ldw	r18,44(sp)
    2088:	63e9803a 	cmpltu	r20,r12,r15
    208c:	75ad803a 	cmpltu	r22,r14,r22
    2090:	dd806815 	stw	r22,416(sp)
    2094:	bc8f883a 	add	r7,r23,r18
    2098:	dd806917 	ldw	r22,420(sp)
    209c:	ddc06717 	ldw	r23,412(sp)
    20a0:	dc800d17 	ldw	r18,52(sp)
    20a4:	45b9803a 	cmpltu	fp,r8,r22
    20a8:	dd806b17 	ldw	r22,428(sp)
    20ac:	bc9f883a 	add	r15,r23,r18
    20b0:	ddc06a17 	ldw	r23,424(sp)
    20b4:	dc800f17 	ldw	r18,60(sp)
    20b8:	9ae7883a 	add	r19,r19,r11
    20bc:	a369883a 	add	r20,r20,r13
    20c0:	bc93883a 	add	r9,r23,r18
    20c4:	ddc06c17 	ldw	r23,432(sp)
    20c8:	85a5803a 	cmpltu	r18,r16,r22
    20cc:	dd801117 	ldw	r22,68(sp)
    20d0:	a9eb883a 	add	r21,r21,r7
    20d4:	e279883a 	add	fp,fp,r9
    20d8:	bda3883a 	add	r17,r23,r22
    20dc:	ddc05e17 	ldw	r23,376(sp)
    20e0:	dd806117 	ldw	r22,388(sp)
    20e4:	9465883a 	add	r18,r18,r17
    20e8:	b8ef883a 	add	r23,r23,r3
    20ec:	ddc06e15 	stw	r23,440(sp)
    20f0:	ddc06817 	ldw	r23,416(sp)
    20f4:	b16d883a 	add	r22,r22,r5
    20f8:	dd806f15 	stw	r22,444(sp)
    20fc:	dd800017 	ldw	r22,0(sp)
    2100:	bbef883a 	add	r23,r23,r15
    2104:	ddc07015 	stw	r23,448(sp)
    2108:	b0800015 	stw	r2,0(r22)
    210c:	b4800f15 	stw	r18,60(r22)
    2110:	ddc06e17 	ldw	r23,440(sp)
    2114:	b2800215 	stw	r10,8(r22)
    2118:	b5c00115 	stw	r23,4(r22)
    211c:	b4c00315 	stw	r19,12(r22)
    2120:	b1000415 	stw	r4,16(r22)
    2124:	d8806f17 	ldw	r2,444(sp)
    2128:	b3000615 	stw	r12,24(r22)
    212c:	b5000715 	stw	r20,28(r22)
    2130:	b0800515 	stw	r2,20(r22)
    2134:	b1800815 	stw	r6,32(r22)
    2138:	b5400915 	stw	r21,36(r22)
    213c:	b3800a15 	stw	r14,40(r22)
    2140:	d8c07017 	ldw	r3,448(sp)
    2144:	b2000c15 	stw	r8,48(r22)
    2148:	b7000d15 	stw	fp,52(r22)
    214c:	b0c00b15 	stw	r3,44(r22)
    2150:	b4000e15 	stw	r16,56(r22)
    2154:	df007917 	ldw	fp,484(sp)
    2158:	dc007817 	ldw	r16,480(sp)
    215c:	dc407717 	ldw	r17,476(sp)
    2160:	dc807617 	ldw	r18,472(sp)
    2164:	dcc07517 	ldw	r19,468(sp)
    2168:	dd007417 	ldw	r20,464(sp)
    216c:	dd407317 	ldw	r21,460(sp)
    2170:	dd807217 	ldw	r22,456(sp)
    2174:	ddc07117 	ldw	r23,452(sp)
    2178:	dec07a04 	addi	sp,sp,488
    217c:	f800283a 	ret

00002180 <SHA512_Update>:
    2180:	defffb04 	addi	sp,sp,-20
    2184:	dc000315 	stw	r16,12(sp)
    2188:	dc400215 	stw	r17,8(sp)
    218c:	dc800115 	stw	r18,4(sp)
    2190:	dfc00415 	stw	ra,16(sp)
    2194:	dcc00015 	stw	r19,0(sp)
    2198:	3023883a 	mov	r17,r6
    219c:	2021883a 	mov	r16,r4
    21a0:	2825883a 	mov	r18,r5
    21a4:	30002826 	beq	r6,zero,2248 <SHA512_Update+0xc8>
    21a8:	20c01117 	ldw	r3,68(r4)
    21ac:	20801017 	ldw	r2,64(r4)
    21b0:	02401fc4 	movi	r9,127
    21b4:	181a977a 	slli	r13,r3,29
    21b8:	1008d0fa 	srli	r4,r2,3
    21bc:	6916b03a 	or	r11,r13,r4
    21c0:	5a4e703a 	and	r7,r11,r9
    21c4:	3800271e 	bne	r7,zero,2264 <SHA512_Update+0xe4>
    21c8:	00801fc4 	movi	r2,127
    21cc:	14401d2e 	bgeu	r2,r17,2244 <SHA512_Update+0xc4>
    21d0:	900b883a 	mov	r5,r18
    21d4:	8009883a 	mov	r4,r16
    21d8:	00014640 	call	1464 <SHA512_Transform>
    21dc:	81001017 	ldw	r4,64(r16)
    21e0:	81401117 	ldw	r5,68(r16)
    21e4:	01810004 	movi	r6,1024
    21e8:	2185883a 	add	r2,r4,r6
    21ec:	1111803a 	cmpltu	r8,r2,r4
    21f0:	4151883a 	add	r8,r8,r5
    21f4:	41000068 	cmpgeui	r4,r8,1
    21f8:	8c7fe004 	addi	r17,r17,-128
    21fc:	1013883a 	mov	r9,r2
    2200:	94802004 	addi	r18,r18,128
    2204:	80801015 	stw	r2,64(r16)
    2208:	82001115 	stw	r8,68(r16)
    220c:	203fee1e 	bne	r4,zero,21c8 <SHA512_Update+0x48>
    2210:	01400044 	movi	r5,1
    2214:	4000021e 	bne	r8,zero,2220 <SHA512_Update+0xa0>
    2218:	0080ffc4 	movi	r2,1023
    221c:	127fea36 	bltu	r2,r9,21c8 <SHA512_Update+0x48>
    2220:	82c01217 	ldw	r11,72(r16)
    2224:	83001317 	ldw	r12,76(r16)
    2228:	5947883a 	add	r3,r11,r5
    222c:	1ac5803a 	cmpltu	r2,r3,r11
    2230:	1305883a 	add	r2,r2,r12
    2234:	80c01215 	stw	r3,72(r16)
    2238:	80801315 	stw	r2,76(r16)
    223c:	00801fc4 	movi	r2,127
    2240:	147fe336 	bltu	r2,r17,21d0 <SHA512_Update+0x50>
    2244:	88004a1e 	bne	r17,zero,2370 <SHA512_Update+0x1f0>
    2248:	dfc00417 	ldw	ra,16(sp)
    224c:	dc000317 	ldw	r16,12(sp)
    2250:	dc400217 	ldw	r17,8(sp)
    2254:	dc800117 	ldw	r18,4(sp)
    2258:	dcc00017 	ldw	r19,0(sp)
    225c:	dec00504 	addi	sp,sp,20
    2260:	f800283a 	ret
    2264:	00802004 	movi	r2,128
    2268:	11e7c83a 	sub	r19,r2,r7
    226c:	34c0202e 	bgeu	r6,r19,22f0 <SHA512_Update+0x170>
    2270:	81c9883a 	add	r4,r16,r7
    2274:	21001404 	addi	r4,r4,80
    2278:	000374c0 	call	374c <__GI_memcpy>
    227c:	881290fa 	slli	r9,r17,3
    2280:	81001017 	ldw	r4,64(r16)
    2284:	81401117 	ldw	r5,68(r16)
    2288:	000f883a 	mov	r7,zero
    228c:	2245883a 	add	r2,r4,r9
    2290:	1111803a 	cmpltu	r8,r2,r4
    2294:	29c7883a 	add	r3,r5,r7
    2298:	40d1883a 	add	r8,r8,r3
    229c:	001b883a 	mov	r13,zero
    22a0:	80801015 	stw	r2,64(r16)
    22a4:	82001115 	stw	r8,68(r16)
    22a8:	43400236 	bltu	r8,r13,22b4 <SHA512_Update+0x134>
    22ac:	6a3fe61e 	bne	r13,r8,2248 <SHA512_Update+0xc8>
    22b0:	127fe52e 	bgeu	r2,r9,2248 <SHA512_Update+0xc8>
    22b4:	82001217 	ldw	r8,72(r16)
    22b8:	82401317 	ldw	r9,76(r16)
    22bc:	01800044 	movi	r6,1
    22c0:	4185883a 	add	r2,r8,r6
    22c4:	1209803a 	cmpltu	r4,r2,r8
    22c8:	2249883a 	add	r4,r4,r9
    22cc:	81001315 	stw	r4,76(r16)
    22d0:	80801215 	stw	r2,72(r16)
    22d4:	dfc00417 	ldw	ra,16(sp)
    22d8:	dc000317 	ldw	r16,12(sp)
    22dc:	dc400217 	ldw	r17,8(sp)
    22e0:	dc800117 	ldw	r18,4(sp)
    22e4:	dcc00017 	ldw	r19,0(sp)
    22e8:	dec00504 	addi	sp,sp,20
    22ec:	f800283a 	ret
    22f0:	81c9883a 	add	r4,r16,r7
    22f4:	21001404 	addi	r4,r4,80
    22f8:	980d883a 	mov	r6,r19
    22fc:	000374c0 	call	374c <__GI_memcpy>
    2300:	981290fa 	slli	r9,r19,3
    2304:	81001017 	ldw	r4,64(r16)
    2308:	81401117 	ldw	r5,68(r16)
    230c:	000f883a 	mov	r7,zero
    2310:	2245883a 	add	r2,r4,r9
    2314:	1111803a 	cmpltu	r8,r2,r4
    2318:	29c7883a 	add	r3,r5,r7
    231c:	40d1883a 	add	r8,r8,r3
    2320:	001b883a 	mov	r13,zero
    2324:	80801015 	stw	r2,64(r16)
    2328:	82001115 	stw	r8,68(r16)
    232c:	43400236 	bltu	r8,r13,2338 <SHA512_Update+0x1b8>
    2330:	6a00091e 	bne	r13,r8,2358 <SHA512_Update+0x1d8>
    2334:	1240082e 	bgeu	r2,r9,2358 <SHA512_Update+0x1d8>
    2338:	82001217 	ldw	r8,72(r16)
    233c:	82401317 	ldw	r9,76(r16)
    2340:	01800044 	movi	r6,1
    2344:	4185883a 	add	r2,r8,r6
    2348:	1209803a 	cmpltu	r4,r2,r8
    234c:	2249883a 	add	r4,r4,r9
    2350:	80801215 	stw	r2,72(r16)
    2354:	81001315 	stw	r4,76(r16)
    2358:	8009883a 	mov	r4,r16
    235c:	81401404 	addi	r5,r16,80
    2360:	94e5883a 	add	r18,r18,r19
    2364:	8ce3c83a 	sub	r17,r17,r19
    2368:	00014640 	call	1464 <SHA512_Transform>
    236c:	003f9606 	br	21c8 <SHA512_Update+0x48>
    2370:	900b883a 	mov	r5,r18
    2374:	81001404 	addi	r4,r16,80
    2378:	880d883a 	mov	r6,r17
    237c:	003fbe06 	br	2278 <SHA512_Update+0xf8>

00002380 <SHA512_Last>:
    2380:	deffec04 	addi	sp,sp,-80
    2384:	dfc01315 	stw	ra,76(sp)
    2388:	df001215 	stw	fp,72(sp)
    238c:	dc001115 	stw	r16,68(sp)
    2390:	dc401015 	stw	r17,64(sp)
    2394:	dc800f15 	stw	r18,60(sp)
    2398:	dcc00e15 	stw	r19,56(sp)
    239c:	dd000d15 	stw	r20,52(sp)
    23a0:	dd400c15 	stw	r21,48(sp)
    23a4:	dd800b15 	stw	r22,44(sp)
    23a8:	ddc00a15 	stw	r23,40(sp)
    23ac:	20801017 	ldw	r2,64(r4)
    23b0:	2039883a 	mov	fp,r4
    23b4:	d8800015 	stw	r2,0(sp)
    23b8:	21001217 	ldw	r4,72(r4)
    23bc:	d9000615 	stw	r4,24(sp)
    23c0:	e1801017 	ldw	r6,64(fp)
    23c4:	d8800617 	ldw	r2,24(sp)
    23c8:	d9800215 	stw	r6,8(sp)
    23cc:	e2801117 	ldw	r10,68(fp)
    23d0:	dc800217 	ldw	r18,8(sp)
    23d4:	1013883a 	mov	r9,r2
    23d8:	da800115 	stw	r10,4(sp)
    23dc:	e3801317 	ldw	r14,76(fp)
    23e0:	500d883a 	mov	r6,r10
    23e4:	d9800215 	stw	r6,8(sp)
    23e8:	7011883a 	mov	r8,r14
    23ec:	da000615 	stw	r8,24(sp)
    23f0:	d9800217 	ldw	r6,8(sp)
    23f4:	900f883a 	mov	r7,r18
    23f8:	dc800617 	ldw	r18,24(sp)
    23fc:	03bfc074 	movhi	r14,65281
    2400:	73bfc004 	addi	r14,r14,-256
    2404:	02803ff4 	movhi	r10,255
    2408:	52803fc4 	addi	r10,r10,255
    240c:	3805883a 	mov	r2,r7
    2410:	3390703a 	and	r8,r6,r14
    2414:	4a9a703a 	and	r13,r9,r10
    2418:	3aa2703a 	and	r17,r7,r10
    241c:	4b8e703a 	and	r7,r9,r14
    2420:	1392703a 	and	r9,r2,r14
    2424:	32a0703a 	and	r16,r6,r10
    2428:	9298703a 	and	r12,r18,r10
    242c:	4004d23a 	srli	r2,r8,8
    2430:	4814963a 	slli	r10,r9,24
    2434:	938c703a 	and	r6,r18,r14
    2438:	383e963a 	slli	ra,r7,24
    243c:	3008d23a 	srli	r4,r6,8
    2440:	8016d63a 	srli	r11,r16,24
    2444:	8806923a 	slli	r3,r17,8
    2448:	680a923a 	slli	r5,r13,8
    244c:	50a8b03a 	or	r20,r10,r2
    2450:	8024923a 	slli	r18,r16,8
    2454:	6014923a 	slli	r10,r12,8
    2458:	602ed63a 	srli	r23,r12,24
    245c:	381ed23a 	srli	r15,r7,8
    2460:	f91cb03a 	or	r14,ra,r4
    2464:	58e6b03a 	or	r19,r11,r3
    2468:	a484b03a 	or	r2,r20,r18
    246c:	7288b03a 	or	r4,r14,r10
    2470:	b956b03a 	or	r11,r23,r5
    2474:	7adcb03a 	or	r14,r15,r11
    2478:	d8800215 	stw	r2,8(sp)
    247c:	d9000615 	stw	r4,24(sp)
    2480:	da800217 	ldw	r10,8(sp)
    2484:	db800715 	stw	r14,28(sp)
    2488:	db800617 	ldw	r14,24(sp)
    248c:	023ffff4 	movhi	r8,65535
    2490:	42000004 	addi	r8,r8,0
    2494:	01bfffd4 	movui	r6,65535
    2498:	482ad23a 	srli	r21,r9,8
    249c:	5220703a 	and	r16,r10,r8
    24a0:	51a4703a 	and	r18,r10,r6
    24a4:	7198703a 	and	r12,r14,r6
    24a8:	7214703a 	and	r10,r14,r8
    24ac:	db800717 	ldw	r14,28(sp)
    24b0:	d8800117 	ldw	r2,4(sp)
    24b4:	d9000017 	ldw	r4,0(sp)
    24b8:	ace8b03a 	or	r20,r21,r19
    24bc:	7216703a 	and	r11,r14,r8
    24c0:	a222703a 	and	r17,r20,r8
    24c4:	719a703a 	and	r13,r14,r6
    24c8:	a1a6703a 	and	r19,r20,r6
    24cc:	1006977a 	slli	r3,r2,29
    24d0:	800cd43a 	srli	r6,r16,16
    24d4:	2004d0fa 	srli	r2,r4,3
    24d8:	581c943a 	slli	r14,r11,16
    24dc:	6008d43a 	srli	r4,r12,16
    24e0:	8810943a 	slli	r8,r17,16
    24e4:	dd000315 	stw	r20,12(sp)
    24e8:	db800815 	stw	r14,32(sp)
    24ec:	4190b03a 	or	r8,r8,r6
    24f0:	d9000915 	stw	r4,36(sp)
    24f4:	da000415 	stw	r8,16(sp)
    24f8:	d9800917 	ldw	r6,36(sp)
    24fc:	1888b03a 	or	r4,r3,r2
    2500:	9012d43a 	srli	r9,r18,16
    2504:	d8800817 	ldw	r2,32(sp)
    2508:	503ed43a 	srli	ra,r10,16
    250c:	980e943a 	slli	r7,r19,16
    2510:	682c943a 	slli	r22,r13,16
    2514:	da800417 	ldw	r10,16(sp)
    2518:	8820d43a 	srli	r16,r17,16
    251c:	9028943a 	slli	r20,r18,16
    2520:	581ed43a 	srli	r15,r11,16
    2524:	6010943a 	slli	r8,r12,16
    2528:	49eab03a 	or	r21,r9,r7
    252c:	17dcb03a 	or	r14,r2,ra
    2530:	3592b03a 	or	r9,r6,r22
    2534:	00801fc4 	movi	r2,127
    2538:	dc000515 	stw	r16,20(sp)
    253c:	208c703a 	and	r6,r4,r2
    2540:	8546b03a 	or	r3,r16,r21
    2544:	5504b03a 	or	r2,r10,r20
    2548:	7208b03a 	or	r4,r14,r8
    254c:	7a4ab03a 	or	r5,r15,r9
    2550:	e0c01115 	stw	r3,68(fp)
    2554:	e1401315 	stw	r5,76(fp)
    2558:	e0801015 	stw	r2,64(fp)
    255c:	e1001215 	stw	r4,72(fp)
    2560:	30002f26 	beq	r6,zero,2620 <SHA512_Last+0x2a0>
    2564:	3707883a 	add	r3,r6,fp
    2568:	31c00044 	addi	r7,r6,1
    256c:	00bfe004 	movi	r2,-128
    2570:	01801c04 	movi	r6,112
    2574:	18801405 	stb	r2,80(r3)
    2578:	31c0222e 	bgeu	r6,r7,2604 <SHA512_Last+0x284>
    257c:	00801fc4 	movi	r2,127
    2580:	11c02f2e 	bgeu	r2,r7,2640 <SHA512_Last+0x2c0>
    2584:	e4001404 	addi	r16,fp,80
    2588:	e009883a 	mov	r4,fp
    258c:	800b883a 	mov	r5,r16
    2590:	00014640 	call	1464 <SHA512_Transform>
    2594:	01801f84 	movi	r6,126
    2598:	8009883a 	mov	r4,r16
    259c:	000b883a 	mov	r5,zero
    25a0:	00039d00 	call	39d0 <__GI_memset>
    25a4:	e0801217 	ldw	r2,72(fp)
    25a8:	e1801017 	ldw	r6,64(fp)
    25ac:	e0c01317 	ldw	r3,76(fp)
    25b0:	e1c01117 	ldw	r7,68(fp)
    25b4:	e009883a 	mov	r4,fp
    25b8:	800b883a 	mov	r5,r16
    25bc:	02000034 	movhi	r8,0
    25c0:	42051904 	addi	r8,r8,5220
    25c4:	e0c03115 	stw	r3,196(fp)
    25c8:	e1c03315 	stw	r7,204(fp)
    25cc:	e0803015 	stw	r2,192(fp)
    25d0:	e1803215 	stw	r6,200(fp)
    25d4:	dfc01317 	ldw	ra,76(sp)
    25d8:	df001217 	ldw	fp,72(sp)
    25dc:	dc001117 	ldw	r16,68(sp)
    25e0:	dc401017 	ldw	r17,64(sp)
    25e4:	dc800f17 	ldw	r18,60(sp)
    25e8:	dcc00e17 	ldw	r19,56(sp)
    25ec:	dd000d17 	ldw	r20,52(sp)
    25f0:	dd400c17 	ldw	r21,48(sp)
    25f4:	dd800b17 	ldw	r22,44(sp)
    25f8:	ddc00a17 	ldw	r23,40(sp)
    25fc:	dec01404 	addi	sp,sp,80
    2600:	4000683a 	jmp	r8
    2604:	e1c9883a 	add	r4,fp,r7
    2608:	31cdc83a 	sub	r6,r6,r7
    260c:	21001404 	addi	r4,r4,80
    2610:	000b883a 	mov	r5,zero
    2614:	00039d00 	call	39d0 <__GI_memset>
    2618:	e4001404 	addi	r16,fp,80
    261c:	003fe106 	br	25a4 <SHA512_Last+0x224>
    2620:	e4001404 	addi	r16,fp,80
    2624:	8009883a 	mov	r4,r16
    2628:	000b883a 	mov	r5,zero
    262c:	01801c04 	movi	r6,112
    2630:	00039d00 	call	39d0 <__GI_memset>
    2634:	00ffe004 	movi	r3,-128
    2638:	80c00005 	stb	r3,0(r16)
    263c:	003fd906 	br	25a4 <SHA512_Last+0x224>
    2640:	e1c9883a 	add	r4,fp,r7
    2644:	01802004 	movi	r6,128
    2648:	31cdc83a 	sub	r6,r6,r7
    264c:	21001404 	addi	r4,r4,80
    2650:	000b883a 	mov	r5,zero
    2654:	00039d00 	call	39d0 <__GI_memset>
    2658:	003fca06 	br	2584 <SHA512_Last+0x204>

0000265c <SHA512_Final>:
    265c:	defffa04 	addi	sp,sp,-24
    2660:	dc800215 	stw	r18,8(sp)
    2664:	dcc00115 	stw	r19,4(sp)
    2668:	dfc00515 	stw	ra,20(sp)
    266c:	dc000415 	stw	r16,16(sp)
    2670:	dc400315 	stw	r17,12(sp)
    2674:	dd000015 	stw	r20,0(sp)
    2678:	2025883a 	mov	r18,r4
    267c:	2827883a 	mov	r19,r5
    2680:	20003426 	beq	r4,zero,2754 <SHA512_Final+0xf8>
    2684:	2809883a 	mov	r4,r5
    2688:	00023800 	call	2380 <SHA512_Last>
    268c:	001f883a 	mov	r15,zero
    2690:	050001c4 	movi	r20,7
    2694:	981d883a 	mov	r14,r19
    2698:	72800017 	ldw	r10,0(r14)
    269c:	72c00117 	ldw	r11,4(r14)
    26a0:	023fc074 	movhi	r8,65281
    26a4:	423fc004 	addi	r8,r8,-256
    26a8:	01803ff4 	movhi	r6,255
    26ac:	31803fc4 	addi	r6,r6,255
    26b0:	5821883a 	mov	r16,r11
    26b4:	5023883a 	mov	r17,r10
    26b8:	8a06703a 	and	r3,r17,r8
    26bc:	8204703a 	and	r2,r16,r8
    26c0:	8188703a 	and	r4,r16,r6
    26c4:	898a703a 	and	r5,r17,r6
    26c8:	1816963a 	slli	r11,r3,24
    26cc:	1014d23a 	srli	r10,r2,8
    26d0:	201ad63a 	srli	r13,r4,24
    26d4:	2818923a 	slli	r12,r5,8
    26d8:	1812d23a 	srli	r9,r3,8
    26dc:	200c923a 	slli	r6,r4,8
    26e0:	6b0eb03a 	or	r7,r13,r12
    26e4:	5a90b03a 	or	r8,r11,r10
    26e8:	013ffff4 	movhi	r4,65535
    26ec:	21000004 	addi	r4,r4,0
    26f0:	00bfffd4 	movui	r2,65535
    26f4:	4194b03a 	or	r10,r8,r6
    26f8:	49d6b03a 	or	r11,r9,r7
    26fc:	5090703a 	and	r8,r10,r2
    2700:	510c703a 	and	r6,r10,r4
    2704:	5892703a 	and	r9,r11,r2
    2708:	590e703a 	and	r7,r11,r4
    270c:	3806943a 	slli	r3,r7,16
    2710:	3004d43a 	srli	r2,r6,16
    2714:	401ad43a 	srli	r13,r8,16
    2718:	4818943a 	slli	r12,r9,16
    271c:	3816d43a 	srli	r11,r7,16
    2720:	4008943a 	slli	r4,r8,16
    2724:	1894b03a 	or	r10,r3,r2
    2728:	6b0ab03a 	or	r5,r13,r12
    272c:	5104b03a 	or	r2,r10,r4
    2730:	5946b03a 	or	r3,r11,r5
    2734:	70800015 	stw	r2,0(r14)
    2738:	70c00115 	stw	r3,4(r14)
    273c:	7bc00044 	addi	r15,r15,1
    2740:	90800015 	stw	r2,0(r18)
    2744:	90c00115 	stw	r3,4(r18)
    2748:	73800204 	addi	r14,r14,8
    274c:	94800204 	addi	r18,r18,8
    2750:	a3ffd10e 	bge	r20,r15,2698 <SHA512_Final+0x3c>
    2754:	9809883a 	mov	r4,r19
    2758:	000b883a 	mov	r5,zero
    275c:	01803404 	movi	r6,208
    2760:	02000034 	movhi	r8,0
    2764:	420e7404 	addi	r8,r8,14800
    2768:	dfc00517 	ldw	ra,20(sp)
    276c:	dc000417 	ldw	r16,16(sp)
    2770:	dc400317 	ldw	r17,12(sp)
    2774:	dc800217 	ldw	r18,8(sp)
    2778:	dcc00117 	ldw	r19,4(sp)
    277c:	dd000017 	ldw	r20,0(sp)
    2780:	dec00604 	addi	sp,sp,24
    2784:	4000683a 	jmp	r8

00002788 <SHA512_End>:
    2788:	deffed04 	addi	sp,sp,-76
    278c:	dc001115 	stw	r16,68(sp)
    2790:	dc401015 	stw	r17,64(sp)
    2794:	dfc01215 	stw	ra,72(sp)
    2798:	2821883a 	mov	r16,r5
    279c:	d823883a 	mov	r17,sp
    27a0:	28002026 	beq	r5,zero,2824 <SHA512_End+0x9c>
    27a4:	200b883a 	mov	r5,r4
    27a8:	d809883a 	mov	r4,sp
    27ac:	000265c0 	call	265c <SHA512_Final>
    27b0:	000d883a 	mov	r6,zero
    27b4:	01c00fc4 	movi	r7,63
    27b8:	89400003 	ldbu	r5,0(r17)
    27bc:	d0a00617 	ldw	r2,-32744(gp)
    27c0:	31800044 	addi	r6,r6,1
    27c4:	2808d13a 	srli	r4,r5,4
    27c8:	294003cc 	andi	r5,r5,15
    27cc:	8c400044 	addi	r17,r17,1
    27d0:	2089883a 	add	r4,r4,r2
    27d4:	20c00003 	ldbu	r3,0(r4)
    27d8:	80c00005 	stb	r3,0(r16)
    27dc:	d0a00617 	ldw	r2,-32744(gp)
    27e0:	84000044 	addi	r16,r16,1
    27e4:	288b883a 	add	r5,r5,r2
    27e8:	28c00003 	ldbu	r3,0(r5)
    27ec:	80c00005 	stb	r3,0(r16)
    27f0:	84000044 	addi	r16,r16,1
    27f4:	39bff00e 	bge	r7,r6,27b8 <SHA512_End+0x30>
    27f8:	80000005 	stb	zero,0(r16)
    27fc:	d809883a 	mov	r4,sp
    2800:	000b883a 	mov	r5,zero
    2804:	01801004 	movi	r6,64
    2808:	00039d00 	call	39d0 <__GI_memset>
    280c:	8005883a 	mov	r2,r16
    2810:	dfc01217 	ldw	ra,72(sp)
    2814:	dc001117 	ldw	r16,68(sp)
    2818:	dc401017 	ldw	r17,64(sp)
    281c:	dec01304 	addi	sp,sp,76
    2820:	f800283a 	ret
    2824:	01803404 	movi	r6,208
    2828:	00039d00 	call	39d0 <__GI_memset>
    282c:	003ff306 	br	27fc <SHA512_End+0x74>

00002830 <SHA512_Data>:
    2830:	deffc804 	addi	sp,sp,-224
    2834:	dc403615 	stw	r17,216(sp)
    2838:	2023883a 	mov	r17,r4
    283c:	d809883a 	mov	r4,sp
    2840:	dfc03715 	stw	ra,220(sp)
    2844:	dcc03515 	stw	r19,212(sp)
    2848:	dd403415 	stw	r21,208(sp)
    284c:	2827883a 	mov	r19,r5
    2850:	302b883a 	mov	r21,r6
    2854:	00013940 	call	1394 <SHA512_Init>
    2858:	880b883a 	mov	r5,r17
    285c:	d809883a 	mov	r4,sp
    2860:	980d883a 	mov	r6,r19
    2864:	00021800 	call	2180 <SHA512_Update>
    2868:	d809883a 	mov	r4,sp
    286c:	a80b883a 	mov	r5,r21
    2870:	00027880 	call	2788 <SHA512_End>
    2874:	dfc03717 	ldw	ra,220(sp)
    2878:	dc403617 	ldw	r17,216(sp)
    287c:	dcc03517 	ldw	r19,212(sp)
    2880:	dd403417 	ldw	r21,208(sp)
    2884:	dec03804 	addi	sp,sp,224
    2888:	f800283a 	ret

0000288c <SHA384_Init>:
    288c:	defffe04 	addi	sp,sp,-8
    2890:	dc000015 	stw	r16,0(sp)
    2894:	2021883a 	mov	r16,r4
    2898:	dfc00115 	stw	ra,4(sp)
    289c:	000b883a 	mov	r5,zero
    28a0:	01802004 	movi	r6,128
    28a4:	21001404 	addi	r4,r4,80
    28a8:	80002826 	beq	r16,zero,294c <SHA384_Init+0xc0>
    28ac:	00800034 	movhi	r2,0
    28b0:	108ff404 	addi	r2,r2,16336
    28b4:	10c00017 	ldw	r3,0(r2)
    28b8:	11c00117 	ldw	r7,4(r2)
    28bc:	12000217 	ldw	r8,8(r2)
    28c0:	80c00015 	stw	r3,0(r16)
    28c4:	10c00317 	ldw	r3,12(r2)
    28c8:	81c00115 	stw	r7,4(r16)
    28cc:	11c00417 	ldw	r7,16(r2)
    28d0:	82000215 	stw	r8,8(r16)
    28d4:	12000517 	ldw	r8,20(r2)
    28d8:	80c00315 	stw	r3,12(r16)
    28dc:	10c00617 	ldw	r3,24(r2)
    28e0:	81c00415 	stw	r7,16(r16)
    28e4:	11c00717 	ldw	r7,28(r2)
    28e8:	82000515 	stw	r8,20(r16)
    28ec:	12000817 	ldw	r8,32(r2)
    28f0:	80c00615 	stw	r3,24(r16)
    28f4:	10c00917 	ldw	r3,36(r2)
    28f8:	81c00715 	stw	r7,28(r16)
    28fc:	11c00a17 	ldw	r7,40(r2)
    2900:	82000815 	stw	r8,32(r16)
    2904:	12000b17 	ldw	r8,44(r2)
    2908:	80c00915 	stw	r3,36(r16)
    290c:	10c00c17 	ldw	r3,48(r2)
    2910:	81c00a15 	stw	r7,40(r16)
    2914:	11c00d17 	ldw	r7,52(r2)
    2918:	82000b15 	stw	r8,44(r16)
    291c:	12000e17 	ldw	r8,56(r2)
    2920:	80c00c15 	stw	r3,48(r16)
    2924:	10c00f17 	ldw	r3,60(r2)
    2928:	81c00d15 	stw	r7,52(r16)
    292c:	82000e15 	stw	r8,56(r16)
    2930:	80c00f15 	stw	r3,60(r16)
    2934:	00039d00 	call	39d0 <__GI_memset>
    2938:	0007883a 	mov	r3,zero
    293c:	80c01015 	stw	r3,64(r16)
    2940:	80001115 	stw	zero,68(r16)
    2944:	80001215 	stw	zero,72(r16)
    2948:	80001315 	stw	zero,76(r16)
    294c:	dfc00117 	ldw	ra,4(sp)
    2950:	dc000017 	ldw	r16,0(sp)
    2954:	dec00204 	addi	sp,sp,8
    2958:	f800283a 	ret

0000295c <SHA384_Update>:
    295c:	02000034 	movhi	r8,0
    2960:	42086004 	addi	r8,r8,8576
    2964:	4000683a 	jmp	r8

00002968 <SHA384_Final>:
    2968:	defffa04 	addi	sp,sp,-24
    296c:	dc800215 	stw	r18,8(sp)
    2970:	dcc00115 	stw	r19,4(sp)
    2974:	dfc00515 	stw	ra,20(sp)
    2978:	dc000415 	stw	r16,16(sp)
    297c:	dc400315 	stw	r17,12(sp)
    2980:	dd000015 	stw	r20,0(sp)
    2984:	2025883a 	mov	r18,r4
    2988:	2827883a 	mov	r19,r5
    298c:	20003426 	beq	r4,zero,2a60 <SHA384_Final+0xf8>
    2990:	2809883a 	mov	r4,r5
    2994:	00023800 	call	2380 <SHA512_Last>
    2998:	001f883a 	mov	r15,zero
    299c:	05000144 	movi	r20,5
    29a0:	981d883a 	mov	r14,r19
    29a4:	72800017 	ldw	r10,0(r14)
    29a8:	72c00117 	ldw	r11,4(r14)
    29ac:	023fc074 	movhi	r8,65281
    29b0:	423fc004 	addi	r8,r8,-256
    29b4:	01803ff4 	movhi	r6,255
    29b8:	31803fc4 	addi	r6,r6,255
    29bc:	5821883a 	mov	r16,r11
    29c0:	5023883a 	mov	r17,r10
    29c4:	8a06703a 	and	r3,r17,r8
    29c8:	8204703a 	and	r2,r16,r8
    29cc:	8188703a 	and	r4,r16,r6
    29d0:	898a703a 	and	r5,r17,r6
    29d4:	1816963a 	slli	r11,r3,24
    29d8:	1014d23a 	srli	r10,r2,8
    29dc:	201ad63a 	srli	r13,r4,24
    29e0:	2818923a 	slli	r12,r5,8
    29e4:	1812d23a 	srli	r9,r3,8
    29e8:	200c923a 	slli	r6,r4,8
    29ec:	6b0eb03a 	or	r7,r13,r12
    29f0:	5a90b03a 	or	r8,r11,r10
    29f4:	013ffff4 	movhi	r4,65535
    29f8:	21000004 	addi	r4,r4,0
    29fc:	00bfffd4 	movui	r2,65535
    2a00:	4194b03a 	or	r10,r8,r6
    2a04:	49d6b03a 	or	r11,r9,r7
    2a08:	5090703a 	and	r8,r10,r2
    2a0c:	510c703a 	and	r6,r10,r4
    2a10:	5892703a 	and	r9,r11,r2
    2a14:	590e703a 	and	r7,r11,r4
    2a18:	3806943a 	slli	r3,r7,16
    2a1c:	3004d43a 	srli	r2,r6,16
    2a20:	401ad43a 	srli	r13,r8,16
    2a24:	4818943a 	slli	r12,r9,16
    2a28:	3816d43a 	srli	r11,r7,16
    2a2c:	4008943a 	slli	r4,r8,16
    2a30:	1894b03a 	or	r10,r3,r2
    2a34:	6b0ab03a 	or	r5,r13,r12
    2a38:	5104b03a 	or	r2,r10,r4
    2a3c:	5946b03a 	or	r3,r11,r5
    2a40:	70800015 	stw	r2,0(r14)
    2a44:	70c00115 	stw	r3,4(r14)
    2a48:	7bc00044 	addi	r15,r15,1
    2a4c:	90800015 	stw	r2,0(r18)
    2a50:	90c00115 	stw	r3,4(r18)
    2a54:	73800204 	addi	r14,r14,8
    2a58:	94800204 	addi	r18,r18,8
    2a5c:	a3ffd10e 	bge	r20,r15,29a4 <SHA384_Final+0x3c>
    2a60:	9809883a 	mov	r4,r19
    2a64:	000b883a 	mov	r5,zero
    2a68:	01803404 	movi	r6,208
    2a6c:	02000034 	movhi	r8,0
    2a70:	420e7404 	addi	r8,r8,14800
    2a74:	dfc00517 	ldw	ra,20(sp)
    2a78:	dc000417 	ldw	r16,16(sp)
    2a7c:	dc400317 	ldw	r17,12(sp)
    2a80:	dc800217 	ldw	r18,8(sp)
    2a84:	dcc00117 	ldw	r19,4(sp)
    2a88:	dd000017 	ldw	r20,0(sp)
    2a8c:	dec00604 	addi	sp,sp,24
    2a90:	4000683a 	jmp	r8

00002a94 <SHA384_End>:
    2a94:	defff104 	addi	sp,sp,-60
    2a98:	dc000d15 	stw	r16,52(sp)
    2a9c:	dc400c15 	stw	r17,48(sp)
    2aa0:	dfc00e15 	stw	ra,56(sp)
    2aa4:	2821883a 	mov	r16,r5
    2aa8:	d823883a 	mov	r17,sp
    2aac:	28001c26 	beq	r5,zero,2b20 <SHA384_End+0x8c>
    2ab0:	200b883a 	mov	r5,r4
    2ab4:	d809883a 	mov	r4,sp
    2ab8:	00029680 	call	2968 <SHA384_Final>
    2abc:	000d883a 	mov	r6,zero
    2ac0:	01c00bc4 	movi	r7,47
    2ac4:	89400003 	ldbu	r5,0(r17)
    2ac8:	d0a00617 	ldw	r2,-32744(gp)
    2acc:	31800044 	addi	r6,r6,1
    2ad0:	2808d13a 	srli	r4,r5,4
    2ad4:	294003cc 	andi	r5,r5,15
    2ad8:	8c400044 	addi	r17,r17,1
    2adc:	2089883a 	add	r4,r4,r2
    2ae0:	20c00003 	ldbu	r3,0(r4)
    2ae4:	80c00005 	stb	r3,0(r16)
    2ae8:	d0a00617 	ldw	r2,-32744(gp)
    2aec:	84000044 	addi	r16,r16,1
    2af0:	288b883a 	add	r5,r5,r2
    2af4:	28c00003 	ldbu	r3,0(r5)
    2af8:	80c00005 	stb	r3,0(r16)
    2afc:	84000044 	addi	r16,r16,1
    2b00:	39bff00e 	bge	r7,r6,2ac4 <SHA384_End+0x30>
    2b04:	8005883a 	mov	r2,r16
    2b08:	80000005 	stb	zero,0(r16)
    2b0c:	dfc00e17 	ldw	ra,56(sp)
    2b10:	dc000d17 	ldw	r16,52(sp)
    2b14:	dc400c17 	ldw	r17,48(sp)
    2b18:	dec00f04 	addi	sp,sp,60
    2b1c:	f800283a 	ret
    2b20:	01803404 	movi	r6,208
    2b24:	00039d00 	call	39d0 <__GI_memset>
    2b28:	8005883a 	mov	r2,r16
    2b2c:	dfc00e17 	ldw	ra,56(sp)
    2b30:	dc000d17 	ldw	r16,52(sp)
    2b34:	dc400c17 	ldw	r17,48(sp)
    2b38:	dec00f04 	addi	sp,sp,60
    2b3c:	f800283a 	ret

00002b40 <SHA384_Data>:
    2b40:	deffc804 	addi	sp,sp,-224
    2b44:	dc403615 	stw	r17,216(sp)
    2b48:	2023883a 	mov	r17,r4
    2b4c:	d809883a 	mov	r4,sp
    2b50:	dfc03715 	stw	ra,220(sp)
    2b54:	dcc03515 	stw	r19,212(sp)
    2b58:	dd403415 	stw	r21,208(sp)
    2b5c:	2827883a 	mov	r19,r5
    2b60:	302b883a 	mov	r21,r6
    2b64:	000288c0 	call	288c <SHA384_Init>
    2b68:	880b883a 	mov	r5,r17
    2b6c:	d809883a 	mov	r4,sp
    2b70:	980d883a 	mov	r6,r19
    2b74:	000295c0 	call	295c <SHA384_Update>
    2b78:	d809883a 	mov	r4,sp
    2b7c:	a80b883a 	mov	r5,r21
    2b80:	0002a940 	call	2a94 <SHA384_End>
    2b84:	dfc03717 	ldw	ra,220(sp)
    2b88:	dc403617 	ldw	r17,216(sp)
    2b8c:	dcc03517 	ldw	r19,212(sp)
    2b90:	dd403417 	ldw	r21,208(sp)
    2b94:	dec03804 	addi	sp,sp,224
    2b98:	f800283a 	ret

00002b9c <__udivdi3>:
    2b9c:	defff604 	addi	sp,sp,-40
    2ba0:	dc000715 	stw	r16,28(sp)
    2ba4:	dc800515 	stw	r18,20(sp)
    2ba8:	dcc00415 	stw	r19,16(sp)
    2bac:	dd800115 	stw	r22,4(sp)
    2bb0:	dfc00915 	stw	ra,36(sp)
    2bb4:	df000815 	stw	fp,32(sp)
    2bb8:	dc400615 	stw	r17,24(sp)
    2bbc:	dd000315 	stw	r20,12(sp)
    2bc0:	dd400215 	stw	r21,8(sp)
    2bc4:	ddc00015 	stw	r23,0(sp)
    2bc8:	3019883a 	mov	r12,r6
    2bcc:	3821883a 	mov	r16,r7
    2bd0:	202d883a 	mov	r22,r4
    2bd4:	2827883a 	mov	r19,r5
    2bd8:	3025883a 	mov	r18,r6
    2bdc:	3800411e 	bne	r7,zero,2ce4 <__udivdi3+0x148>
    2be0:	2980662e 	bgeu	r5,r6,2d7c <__udivdi3+0x1e0>
    2be4:	00bfffd4 	movui	r2,65535
    2be8:	1181022e 	bgeu	r2,r6,2ff4 <__udivdi3+0x458>
    2bec:	00804034 	movhi	r2,256
    2bf0:	10bfffc4 	addi	r2,r2,-1
    2bf4:	01c00404 	movi	r7,16
    2bf8:	1180012e 	bgeu	r2,r6,2c00 <__udivdi3+0x64>
    2bfc:	01c00604 	movi	r7,24
    2c00:	61c4d83a 	srl	r2,r12,r7
    2c04:	01000034 	movhi	r4,0
    2c08:	2110fc04 	addi	r4,r4,17392
    2c0c:	01400804 	movi	r5,32
    2c10:	1105883a 	add	r2,r2,r4
    2c14:	10c00003 	ldbu	r3,0(r2)
    2c18:	19c7883a 	add	r3,r3,r7
    2c1c:	28cfc83a 	sub	r7,r5,r3
    2c20:	38000626 	beq	r7,zero,2c3c <__udivdi3+0xa0>
    2c24:	29c5c83a 	sub	r2,r5,r7
    2c28:	b084d83a 	srl	r2,r22,r2
    2c2c:	99c6983a 	sll	r3,r19,r7
    2c30:	b1ec983a 	sll	r22,r22,r7
    2c34:	91e4983a 	sll	r18,r18,r7
    2c38:	18a6b03a 	or	r19,r3,r2
    2c3c:	9028d43a 	srli	r20,r18,16
    2c40:	9809883a 	mov	r4,r19
    2c44:	957fffcc 	andi	r21,r18,65535
    2c48:	a00b883a 	mov	r5,r20
    2c4c:	000373c0 	call	373c <__umodsi3>
    2c50:	9809883a 	mov	r4,r19
    2c54:	a00b883a 	mov	r5,r20
    2c58:	1023883a 	mov	r17,r2
    2c5c:	000372c0 	call	372c <__udivsi3>
    2c60:	1027883a 	mov	r19,r2
    2c64:	8806943a 	slli	r3,r17,16
    2c68:	b004d43a 	srli	r2,r22,16
    2c6c:	9d4b383a 	mul	r5,r19,r21
    2c70:	18a2b03a 	or	r17,r3,r2
    2c74:	8940042e 	bgeu	r17,r5,2c88 <__udivdi3+0xec>
    2c78:	8ca3883a 	add	r17,r17,r18
    2c7c:	9cffffc4 	addi	r19,r19,-1
    2c80:	8c800136 	bltu	r17,r18,2c88 <__udivdi3+0xec>
    2c84:	89411736 	bltu	r17,r5,30e4 <__udivdi3+0x548>
    2c88:	8963c83a 	sub	r17,r17,r5
    2c8c:	8809883a 	mov	r4,r17
    2c90:	a00b883a 	mov	r5,r20
    2c94:	000373c0 	call	373c <__umodsi3>
    2c98:	8809883a 	mov	r4,r17
    2c9c:	a00b883a 	mov	r5,r20
    2ca0:	1021883a 	mov	r16,r2
    2ca4:	000372c0 	call	372c <__udivsi3>
    2ca8:	8006943a 	slli	r3,r16,16
    2cac:	154b383a 	mul	r5,r2,r21
    2cb0:	1009883a 	mov	r4,r2
    2cb4:	b0bfffcc 	andi	r2,r22,65535
    2cb8:	18a0b03a 	or	r16,r3,r2
    2cbc:	8140052e 	bgeu	r16,r5,2cd4 <__udivdi3+0x138>
    2cc0:	84a1883a 	add	r16,r16,r18
    2cc4:	213fffc4 	addi	r4,r4,-1
    2cc8:	84800236 	bltu	r16,r18,2cd4 <__udivdi3+0x138>
    2ccc:	8140012e 	bgeu	r16,r5,2cd4 <__udivdi3+0x138>
    2cd0:	213fffc4 	addi	r4,r4,-1
    2cd4:	9804943a 	slli	r2,r19,16
    2cd8:	0029883a 	mov	r20,zero
    2cdc:	1110b03a 	or	r8,r2,r4
    2ce0:	00000306 	br	2cf0 <__udivdi3+0x154>
    2ce4:	0011883a 	mov	r8,zero
    2ce8:	29c00f2e 	bgeu	r5,r7,2d28 <__udivdi3+0x18c>
    2cec:	0029883a 	mov	r20,zero
    2cf0:	4005883a 	mov	r2,r8
    2cf4:	a007883a 	mov	r3,r20
    2cf8:	dfc00917 	ldw	ra,36(sp)
    2cfc:	df000817 	ldw	fp,32(sp)
    2d00:	dc000717 	ldw	r16,28(sp)
    2d04:	dc400617 	ldw	r17,24(sp)
    2d08:	dc800517 	ldw	r18,20(sp)
    2d0c:	dcc00417 	ldw	r19,16(sp)
    2d10:	dd000317 	ldw	r20,12(sp)
    2d14:	dd400217 	ldw	r21,8(sp)
    2d18:	dd800117 	ldw	r22,4(sp)
    2d1c:	ddc00017 	ldw	r23,0(sp)
    2d20:	dec00a04 	addi	sp,sp,40
    2d24:	f800283a 	ret
    2d28:	00bfffd4 	movui	r2,65535
    2d2c:	11c0592e 	bgeu	r2,r7,2e94 <__udivdi3+0x2f8>
    2d30:	00804034 	movhi	r2,256
    2d34:	10bfffc4 	addi	r2,r2,-1
    2d38:	01400404 	movi	r5,16
    2d3c:	11c0012e 	bgeu	r2,r7,2d44 <__udivdi3+0x1a8>
    2d40:	01400604 	movi	r5,24
    2d44:	8144d83a 	srl	r2,r16,r5
    2d48:	01000034 	movhi	r4,0
    2d4c:	2110fc04 	addi	r4,r4,17392
    2d50:	01800804 	movi	r6,32
    2d54:	1105883a 	add	r2,r2,r4
    2d58:	10c00003 	ldbu	r3,0(r2)
    2d5c:	1947883a 	add	r3,r3,r5
    2d60:	30cfc83a 	sub	r7,r6,r3
    2d64:	3800571e 	bne	r7,zero,2ec4 <__udivdi3+0x328>
    2d68:	84c00236 	bltu	r16,r19,2d74 <__udivdi3+0x1d8>
    2d6c:	0011883a 	mov	r8,zero
    2d70:	b4bfde36 	bltu	r22,r18,2cec <__udivdi3+0x150>
    2d74:	02000044 	movi	r8,1
    2d78:	003fdc06 	br	2cec <__udivdi3+0x150>
    2d7c:	30003926 	beq	r6,zero,2e64 <__udivdi3+0x2c8>
    2d80:	00bfffd4 	movui	r2,65535
    2d84:	14803d36 	bltu	r2,r18,2e7c <__udivdi3+0x2e0>
    2d88:	00803fc4 	movi	r2,255
    2d8c:	148b803a 	cmpltu	r5,r2,r18
    2d90:	280a90fa 	slli	r5,r5,3
    2d94:	9144d83a 	srl	r2,r18,r5
    2d98:	01000034 	movhi	r4,0
    2d9c:	2110fc04 	addi	r4,r4,17392
    2da0:	01800804 	movi	r6,32
    2da4:	1105883a 	add	r2,r2,r4
    2da8:	10c00003 	ldbu	r3,0(r2)
    2dac:	1947883a 	add	r3,r3,r5
    2db0:	30cfc83a 	sub	r7,r6,r3
    2db4:	3800931e 	bne	r7,zero,3004 <__udivdi3+0x468>
    2db8:	902ad43a 	srli	r21,r18,16
    2dbc:	9ca7c83a 	sub	r19,r19,r18
    2dc0:	05000044 	movi	r20,1
    2dc4:	95ffffcc 	andi	r23,r18,65535
    2dc8:	9809883a 	mov	r4,r19
    2dcc:	a80b883a 	mov	r5,r21
    2dd0:	000373c0 	call	373c <__umodsi3>
    2dd4:	9809883a 	mov	r4,r19
    2dd8:	a80b883a 	mov	r5,r21
    2ddc:	1023883a 	mov	r17,r2
    2de0:	000372c0 	call	372c <__udivsi3>
    2de4:	1027883a 	mov	r19,r2
    2de8:	8806943a 	slli	r3,r17,16
    2dec:	b004d43a 	srli	r2,r22,16
    2df0:	9dcb383a 	mul	r5,r19,r23
    2df4:	18a2b03a 	or	r17,r3,r2
    2df8:	8940042e 	bgeu	r17,r5,2e0c <__udivdi3+0x270>
    2dfc:	8ca3883a 	add	r17,r17,r18
    2e00:	9cffffc4 	addi	r19,r19,-1
    2e04:	8c800136 	bltu	r17,r18,2e0c <__udivdi3+0x270>
    2e08:	8940b936 	bltu	r17,r5,30f0 <__udivdi3+0x554>
    2e0c:	8963c83a 	sub	r17,r17,r5
    2e10:	8809883a 	mov	r4,r17
    2e14:	a80b883a 	mov	r5,r21
    2e18:	000373c0 	call	373c <__umodsi3>
    2e1c:	8809883a 	mov	r4,r17
    2e20:	a80b883a 	mov	r5,r21
    2e24:	1021883a 	mov	r16,r2
    2e28:	000372c0 	call	372c <__udivsi3>
    2e2c:	8006943a 	slli	r3,r16,16
    2e30:	15cb383a 	mul	r5,r2,r23
    2e34:	1009883a 	mov	r4,r2
    2e38:	b0bfffcc 	andi	r2,r22,65535
    2e3c:	18a0b03a 	or	r16,r3,r2
    2e40:	8140052e 	bgeu	r16,r5,2e58 <__udivdi3+0x2bc>
    2e44:	84a1883a 	add	r16,r16,r18
    2e48:	213fffc4 	addi	r4,r4,-1
    2e4c:	84800236 	bltu	r16,r18,2e58 <__udivdi3+0x2bc>
    2e50:	8140012e 	bgeu	r16,r5,2e58 <__udivdi3+0x2bc>
    2e54:	213fffc4 	addi	r4,r4,-1
    2e58:	9804943a 	slli	r2,r19,16
    2e5c:	1110b03a 	or	r8,r2,r4
    2e60:	003fa306 	br	2cf0 <__udivdi3+0x154>
    2e64:	01000044 	movi	r4,1
    2e68:	000b883a 	mov	r5,zero
    2e6c:	000372c0 	call	372c <__udivsi3>
    2e70:	1025883a 	mov	r18,r2
    2e74:	00bfffd4 	movui	r2,65535
    2e78:	14bfc32e 	bgeu	r2,r18,2d88 <__udivdi3+0x1ec>
    2e7c:	00804034 	movhi	r2,256
    2e80:	10bfffc4 	addi	r2,r2,-1
    2e84:	01400404 	movi	r5,16
    2e88:	14bfc22e 	bgeu	r2,r18,2d94 <__udivdi3+0x1f8>
    2e8c:	01400604 	movi	r5,24
    2e90:	003fc006 	br	2d94 <__udivdi3+0x1f8>
    2e94:	00803fc4 	movi	r2,255
    2e98:	11cb803a 	cmpltu	r5,r2,r7
    2e9c:	280a90fa 	slli	r5,r5,3
    2ea0:	01000034 	movhi	r4,0
    2ea4:	2110fc04 	addi	r4,r4,17392
    2ea8:	01800804 	movi	r6,32
    2eac:	8144d83a 	srl	r2,r16,r5
    2eb0:	1105883a 	add	r2,r2,r4
    2eb4:	10c00003 	ldbu	r3,0(r2)
    2eb8:	1947883a 	add	r3,r3,r5
    2ebc:	30cfc83a 	sub	r7,r6,r3
    2ec0:	383fa926 	beq	r7,zero,2d68 <__udivdi3+0x1cc>
    2ec4:	31c9c83a 	sub	r4,r6,r7
    2ec8:	81c6983a 	sll	r3,r16,r7
    2ecc:	9104d83a 	srl	r2,r18,r4
    2ed0:	9928d83a 	srl	r20,r19,r4
    2ed4:	b10cd83a 	srl	r6,r22,r4
    2ed8:	18a0b03a 	or	r16,r3,r2
    2edc:	802ad43a 	srli	r21,r16,16
    2ee0:	99c4983a 	sll	r2,r19,r7
    2ee4:	a009883a 	mov	r4,r20
    2ee8:	a80b883a 	mov	r5,r21
    2eec:	11a6b03a 	or	r19,r2,r6
    2ef0:	b1ec983a 	sll	r22,r22,r7
    2ef4:	91e4983a 	sll	r18,r18,r7
    2ef8:	000373c0 	call	373c <__umodsi3>
    2efc:	a009883a 	mov	r4,r20
    2f00:	a80b883a 	mov	r5,r21
    2f04:	1023883a 	mov	r17,r2
    2f08:	000372c0 	call	372c <__udivsi3>
    2f0c:	102f883a 	mov	r23,r2
    2f10:	8806943a 	slli	r3,r17,16
    2f14:	873fffcc 	andi	fp,r16,65535
    2f18:	9804d43a 	srli	r2,r19,16
    2f1c:	bf13383a 	mul	r9,r23,fp
    2f20:	18a2b03a 	or	r17,r3,r2
    2f24:	8a40062e 	bgeu	r17,r9,2f40 <__udivdi3+0x3a4>
    2f28:	8c23883a 	add	r17,r17,r16
    2f2c:	bdffffc4 	addi	r23,r23,-1
    2f30:	8c000336 	bltu	r17,r16,2f40 <__udivdi3+0x3a4>
    2f34:	8a40022e 	bgeu	r17,r9,2f40 <__udivdi3+0x3a4>
    2f38:	bdffffc4 	addi	r23,r23,-1
    2f3c:	8c23883a 	add	r17,r17,r16
    2f40:	8a63c83a 	sub	r17,r17,r9
    2f44:	8809883a 	mov	r4,r17
    2f48:	a80b883a 	mov	r5,r21
    2f4c:	000373c0 	call	373c <__umodsi3>
    2f50:	a80b883a 	mov	r5,r21
    2f54:	8809883a 	mov	r4,r17
    2f58:	1029883a 	mov	r20,r2
    2f5c:	000372c0 	call	372c <__udivsi3>
    2f60:	a006943a 	slli	r3,r20,16
    2f64:	1713383a 	mul	r9,r2,fp
    2f68:	100b883a 	mov	r5,r2
    2f6c:	98bfffcc 	andi	r2,r19,65535
    2f70:	18a8b03a 	or	r20,r3,r2
    2f74:	a240032e 	bgeu	r20,r9,2f84 <__udivdi3+0x3e8>
    2f78:	a429883a 	add	r20,r20,r16
    2f7c:	297fffc4 	addi	r5,r5,-1
    2f80:	a400542e 	bgeu	r20,r16,30d4 <__udivdi3+0x538>
    2f84:	b808943a 	slli	r4,r23,16
    2f88:	90ffffcc 	andi	r3,r18,65535
    2f8c:	900cd43a 	srli	r6,r18,16
    2f90:	2150b03a 	or	r8,r4,r5
    2f94:	40bfffcc 	andi	r2,r8,65535
    2f98:	10d5383a 	mul	r10,r2,r3
    2f9c:	400ad43a 	srli	r5,r8,16
    2fa0:	118f383a 	mul	r7,r2,r6
    2fa4:	5008d43a 	srli	r4,r10,16
    2fa8:	28c7383a 	mul	r3,r5,r3
    2fac:	a269c83a 	sub	r20,r20,r9
    2fb0:	390f883a 	add	r7,r7,r4
    2fb4:	38cf883a 	add	r7,r7,r3
    2fb8:	298b383a 	mul	r5,r5,r6
    2fbc:	38c0032e 	bgeu	r7,r3,2fcc <__udivdi3+0x430>
    2fc0:	00800074 	movhi	r2,1
    2fc4:	10800004 	addi	r2,r2,0
    2fc8:	288b883a 	add	r5,r5,r2
    2fcc:	3804d43a 	srli	r2,r7,16
    2fd0:	3808943a 	slli	r4,r7,16
    2fd4:	50ffffcc 	andi	r3,r10,65535
    2fd8:	1145883a 	add	r2,r2,r5
    2fdc:	20c7883a 	add	r3,r4,r3
    2fe0:	a0800236 	bltu	r20,r2,2fec <__udivdi3+0x450>
    2fe4:	153f411e 	bne	r2,r20,2cec <__udivdi3+0x150>
    2fe8:	b0ff402e 	bgeu	r22,r3,2cec <__udivdi3+0x150>
    2fec:	423fffc4 	addi	r8,r8,-1
    2ff0:	003f3e06 	br	2cec <__udivdi3+0x150>
    2ff4:	00803fc4 	movi	r2,255
    2ff8:	118f803a 	cmpltu	r7,r2,r6
    2ffc:	380e90fa 	slli	r7,r7,3
    3000:	003eff06 	br	2c00 <__udivdi3+0x64>
    3004:	91e4983a 	sll	r18,r18,r7
    3008:	31c9c83a 	sub	r4,r6,r7
    300c:	9928d83a 	srl	r20,r19,r4
    3010:	902ad43a 	srli	r21,r18,16
    3014:	b106d83a 	srl	r3,r22,r4
    3018:	99c4983a 	sll	r2,r19,r7
    301c:	a009883a 	mov	r4,r20
    3020:	a80b883a 	mov	r5,r21
    3024:	10e6b03a 	or	r19,r2,r3
    3028:	b1ec983a 	sll	r22,r22,r7
    302c:	000373c0 	call	373c <__umodsi3>
    3030:	a009883a 	mov	r4,r20
    3034:	a80b883a 	mov	r5,r21
    3038:	1021883a 	mov	r16,r2
    303c:	000372c0 	call	372c <__udivsi3>
    3040:	1029883a 	mov	r20,r2
    3044:	8006943a 	slli	r3,r16,16
    3048:	95ffffcc 	andi	r23,r18,65535
    304c:	9804d43a 	srli	r2,r19,16
    3050:	a5d1383a 	mul	r8,r20,r23
    3054:	18a0b03a 	or	r16,r3,r2
    3058:	8200062e 	bgeu	r16,r8,3074 <__udivdi3+0x4d8>
    305c:	84a1883a 	add	r16,r16,r18
    3060:	a53fffc4 	addi	r20,r20,-1
    3064:	84800336 	bltu	r16,r18,3074 <__udivdi3+0x4d8>
    3068:	8200022e 	bgeu	r16,r8,3074 <__udivdi3+0x4d8>
    306c:	a53fffc4 	addi	r20,r20,-1
    3070:	84a1883a 	add	r16,r16,r18
    3074:	8221c83a 	sub	r16,r16,r8
    3078:	8009883a 	mov	r4,r16
    307c:	a80b883a 	mov	r5,r21
    3080:	000373c0 	call	373c <__umodsi3>
    3084:	8009883a 	mov	r4,r16
    3088:	a80b883a 	mov	r5,r21
    308c:	1023883a 	mov	r17,r2
    3090:	000372c0 	call	372c <__udivsi3>
    3094:	8806943a 	slli	r3,r17,16
    3098:	15d1383a 	mul	r8,r2,r23
    309c:	1009883a 	mov	r4,r2
    30a0:	98bfffcc 	andi	r2,r19,65535
    30a4:	18a2b03a 	or	r17,r3,r2
    30a8:	8a00062e 	bgeu	r17,r8,30c4 <__udivdi3+0x528>
    30ac:	8ca3883a 	add	r17,r17,r18
    30b0:	213fffc4 	addi	r4,r4,-1
    30b4:	8c800336 	bltu	r17,r18,30c4 <__udivdi3+0x528>
    30b8:	8a00022e 	bgeu	r17,r8,30c4 <__udivdi3+0x528>
    30bc:	213fffc4 	addi	r4,r4,-1
    30c0:	8ca3883a 	add	r17,r17,r18
    30c4:	a004943a 	slli	r2,r20,16
    30c8:	8a27c83a 	sub	r19,r17,r8
    30cc:	1128b03a 	or	r20,r2,r4
    30d0:	003f3d06 	br	2dc8 <__udivdi3+0x22c>
    30d4:	a27fab2e 	bgeu	r20,r9,2f84 <__udivdi3+0x3e8>
    30d8:	a429883a 	add	r20,r20,r16
    30dc:	297fffc4 	addi	r5,r5,-1
    30e0:	003fa806 	br	2f84 <__udivdi3+0x3e8>
    30e4:	9cffffc4 	addi	r19,r19,-1
    30e8:	8ca3883a 	add	r17,r17,r18
    30ec:	003ee606 	br	2c88 <__udivdi3+0xec>
    30f0:	9cffffc4 	addi	r19,r19,-1
    30f4:	8ca3883a 	add	r17,r17,r18
    30f8:	003f4406 	br	2e0c <__udivdi3+0x270>

000030fc <__umoddi3>:
    30fc:	defff004 	addi	sp,sp,-64
    3100:	df000e15 	stw	fp,56(sp)
    3104:	dc000d15 	stw	r16,52(sp)
    3108:	dd000915 	stw	r20,36(sp)
    310c:	dd400815 	stw	r21,32(sp)
    3110:	dfc00f15 	stw	ra,60(sp)
    3114:	dc400c15 	stw	r17,48(sp)
    3118:	dc800b15 	stw	r18,44(sp)
    311c:	dcc00a15 	stw	r19,40(sp)
    3120:	dd800715 	stw	r22,28(sp)
    3124:	ddc00615 	stw	r23,24(sp)
    3128:	3019883a 	mov	r12,r6
    312c:	3821883a 	mov	r16,r7
    3130:	2829883a 	mov	r20,r5
    3134:	302b883a 	mov	r21,r6
    3138:	2039883a 	mov	fp,r4
    313c:	38001d1e 	bne	r7,zero,31b4 <__umoddi3+0xb8>
    3140:	2980472e 	bgeu	r5,r6,3260 <__umoddi3+0x164>
    3144:	00bfffd4 	movui	r2,65535
    3148:	1180902e 	bgeu	r2,r6,338c <__umoddi3+0x290>
    314c:	00804034 	movhi	r2,256
    3150:	10bfffc4 	addi	r2,r2,-1
    3154:	01c00404 	movi	r7,16
    3158:	1180012e 	bgeu	r2,r6,3160 <__umoddi3+0x64>
    315c:	01c00604 	movi	r7,24
    3160:	61c4d83a 	srl	r2,r12,r7
    3164:	01000034 	movhi	r4,0
    3168:	2110fc04 	addi	r4,r4,17392
    316c:	01400804 	movi	r5,32
    3170:	1105883a 	add	r2,r2,r4
    3174:	10c00003 	ldbu	r3,0(r2)
    3178:	19c7883a 	add	r3,r3,r7
    317c:	28c7c83a 	sub	r3,r5,r3
    3180:	d8c00315 	stw	r3,12(sp)
    3184:	18000726 	beq	r3,zero,31a4 <__umoddi3+0xa8>
    3188:	d9000317 	ldw	r4,12(sp)
    318c:	28c5c83a 	sub	r2,r5,r3
    3190:	e084d83a 	srl	r2,fp,r2
    3194:	a0c6983a 	sll	r3,r20,r3
    3198:	a92a983a 	sll	r21,r21,r4
    319c:	e138983a 	sll	fp,fp,r4
    31a0:	18a8b03a 	or	r20,r3,r2
    31a4:	a82cd43a 	srli	r22,r21,16
    31a8:	a009883a 	mov	r4,r20
    31ac:	adffffcc 	andi	r23,r21,65535
    31b0:	00003f06 	br	32b0 <__umoddi3+0x1b4>
    31b4:	29c0122e 	bgeu	r5,r7,3200 <__umoddi3+0x104>
    31b8:	d9000015 	stw	r4,0(sp)
    31bc:	d9400115 	stw	r5,4(sp)
    31c0:	d9000017 	ldw	r4,0(sp)
    31c4:	d9400117 	ldw	r5,4(sp)
    31c8:	2005883a 	mov	r2,r4
    31cc:	2807883a 	mov	r3,r5
    31d0:	dfc00f17 	ldw	ra,60(sp)
    31d4:	df000e17 	ldw	fp,56(sp)
    31d8:	dc000d17 	ldw	r16,52(sp)
    31dc:	dc400c17 	ldw	r17,48(sp)
    31e0:	dc800b17 	ldw	r18,44(sp)
    31e4:	dcc00a17 	ldw	r19,40(sp)
    31e8:	dd000917 	ldw	r20,36(sp)
    31ec:	dd400817 	ldw	r21,32(sp)
    31f0:	dd800717 	ldw	r22,28(sp)
    31f4:	ddc00617 	ldw	r23,24(sp)
    31f8:	dec01004 	addi	sp,sp,64
    31fc:	f800283a 	ret
    3200:	00bfffd4 	movui	r2,65535
    3204:	11c05d2e 	bgeu	r2,r7,337c <__umoddi3+0x280>
    3208:	00804034 	movhi	r2,256
    320c:	10bfffc4 	addi	r2,r2,-1
    3210:	01400404 	movi	r5,16
    3214:	11c0012e 	bgeu	r2,r7,321c <__umoddi3+0x120>
    3218:	01400604 	movi	r5,24
    321c:	8144d83a 	srl	r2,r16,r5
    3220:	01000034 	movhi	r4,0
    3224:	2110fc04 	addi	r4,r4,17392
    3228:	01800804 	movi	r6,32
    322c:	1105883a 	add	r2,r2,r4
    3230:	10c00003 	ldbu	r3,0(r2)
    3234:	1947883a 	add	r3,r3,r5
    3238:	30c7c83a 	sub	r3,r6,r3
    323c:	d8c00315 	stw	r3,12(sp)
    3240:	18005c1e 	bne	r3,zero,33b4 <__umoddi3+0x2b8>
    3244:	85005536 	bltu	r16,r20,339c <__umoddi3+0x2a0>
    3248:	e540542e 	bgeu	fp,r21,339c <__umoddi3+0x2a0>
    324c:	d83fdc26 	beq	sp,zero,31c0 <__umoddi3+0xc4>
    3250:	e025883a 	mov	r18,fp
    3254:	dd000115 	stw	r20,4(sp)
    3258:	dc800015 	stw	r18,0(sp)
    325c:	003fd806 	br	31c0 <__umoddi3+0xc4>
    3260:	30003a26 	beq	r6,zero,334c <__umoddi3+0x250>
    3264:	00bfffd4 	movui	r2,65535
    3268:	15403e36 	bltu	r2,r21,3364 <__umoddi3+0x268>
    326c:	00803fc4 	movi	r2,255
    3270:	154b803a 	cmpltu	r5,r2,r21
    3274:	280a90fa 	slli	r5,r5,3
    3278:	a944d83a 	srl	r2,r21,r5
    327c:	01000034 	movhi	r4,0
    3280:	2110fc04 	addi	r4,r4,17392
    3284:	01800804 	movi	r6,32
    3288:	1105883a 	add	r2,r2,r4
    328c:	10c00003 	ldbu	r3,0(r2)
    3290:	1947883a 	add	r3,r3,r5
    3294:	30c7c83a 	sub	r3,r6,r3
    3298:	d8c00315 	stw	r3,12(sp)
    329c:	1800a41e 	bne	r3,zero,3530 <__umoddi3+0x434>
    32a0:	a82cd43a 	srli	r22,r21,16
    32a4:	a569c83a 	sub	r20,r20,r21
    32a8:	adffffcc 	andi	r23,r21,65535
    32ac:	a009883a 	mov	r4,r20
    32b0:	b00b883a 	mov	r5,r22
    32b4:	000373c0 	call	373c <__umodsi3>
    32b8:	a009883a 	mov	r4,r20
    32bc:	b00b883a 	mov	r5,r22
    32c0:	1021883a 	mov	r16,r2
    32c4:	000372c0 	call	372c <__udivsi3>
    32c8:	e006d43a 	srli	r3,fp,16
    32cc:	8008943a 	slli	r4,r16,16
    32d0:	15cb383a 	mul	r5,r2,r23
    32d4:	20e0b03a 	or	r16,r4,r3
    32d8:	8140042e 	bgeu	r16,r5,32ec <__umoddi3+0x1f0>
    32dc:	8561883a 	add	r16,r16,r21
    32e0:	85400236 	bltu	r16,r21,32ec <__umoddi3+0x1f0>
    32e4:	8140012e 	bgeu	r16,r5,32ec <__umoddi3+0x1f0>
    32e8:	8561883a 	add	r16,r16,r21
    32ec:	8161c83a 	sub	r16,r16,r5
    32f0:	8009883a 	mov	r4,r16
    32f4:	b00b883a 	mov	r5,r22
    32f8:	000373c0 	call	373c <__umodsi3>
    32fc:	b00b883a 	mov	r5,r22
    3300:	8009883a 	mov	r4,r16
    3304:	1023883a 	mov	r17,r2
    3308:	000372c0 	call	372c <__udivsi3>
    330c:	8806943a 	slli	r3,r17,16
    3310:	15cb383a 	mul	r5,r2,r23
    3314:	e0bfffcc 	andi	r2,fp,65535
    3318:	18a2b03a 	or	r17,r3,r2
    331c:	8940042e 	bgeu	r17,r5,3330 <__umoddi3+0x234>
    3320:	8d63883a 	add	r17,r17,r21
    3324:	8d400236 	bltu	r17,r21,3330 <__umoddi3+0x234>
    3328:	8940012e 	bgeu	r17,r5,3330 <__umoddi3+0x234>
    332c:	8d63883a 	add	r17,r17,r21
    3330:	8979c83a 	sub	fp,r17,r5
    3334:	d83fa226 	beq	sp,zero,31c0 <__umoddi3+0xc4>
    3338:	d8c00317 	ldw	r3,12(sp)
    333c:	d8000115 	stw	zero,4(sp)
    3340:	e0e4d83a 	srl	r18,fp,r3
    3344:	dc800015 	stw	r18,0(sp)
    3348:	003f9d06 	br	31c0 <__umoddi3+0xc4>
    334c:	01000044 	movi	r4,1
    3350:	000b883a 	mov	r5,zero
    3354:	000372c0 	call	372c <__udivsi3>
    3358:	102b883a 	mov	r21,r2
    335c:	00bfffd4 	movui	r2,65535
    3360:	157fc22e 	bgeu	r2,r21,326c <__umoddi3+0x170>
    3364:	00804034 	movhi	r2,256
    3368:	10bfffc4 	addi	r2,r2,-1
    336c:	01400404 	movi	r5,16
    3370:	157fc12e 	bgeu	r2,r21,3278 <__umoddi3+0x17c>
    3374:	01400604 	movi	r5,24
    3378:	003fbf06 	br	3278 <__umoddi3+0x17c>
    337c:	00803fc4 	movi	r2,255
    3380:	11cb803a 	cmpltu	r5,r2,r7
    3384:	280a90fa 	slli	r5,r5,3
    3388:	003fa406 	br	321c <__umoddi3+0x120>
    338c:	00803fc4 	movi	r2,255
    3390:	118f803a 	cmpltu	r7,r2,r6
    3394:	380e90fa 	slli	r7,r7,3
    3398:	003f7106 	br	3160 <__umoddi3+0x64>
    339c:	e549c83a 	sub	r4,fp,r21
    33a0:	e105803a 	cmpltu	r2,fp,r4
    33a4:	a407c83a 	sub	r3,r20,r16
    33a8:	18a9c83a 	sub	r20,r3,r2
    33ac:	2039883a 	mov	fp,r4
    33b0:	003fa606 	br	324c <__umoddi3+0x150>
    33b4:	d9000317 	ldw	r4,12(sp)
    33b8:	310dc83a 	sub	r6,r6,r4
    33bc:	a984d83a 	srl	r2,r21,r6
    33c0:	8106983a 	sll	r3,r16,r4
    33c4:	d9800215 	stw	r6,8(sp)
    33c8:	a1aed83a 	srl	r23,r20,r6
    33cc:	18a0b03a 	or	r16,r3,r2
    33d0:	8004d43a 	srli	r2,r16,16
    33d4:	d8c00217 	ldw	r3,8(sp)
    33d8:	a10c983a 	sll	r6,r20,r4
    33dc:	d8800415 	stw	r2,16(sp)
    33e0:	d9400417 	ldw	r5,16(sp)
    33e4:	e0c4d83a 	srl	r2,fp,r3
    33e8:	b809883a 	mov	r4,r23
    33ec:	30a8b03a 	or	r20,r6,r2
    33f0:	000373c0 	call	373c <__umodsi3>
    33f4:	d9400417 	ldw	r5,16(sp)
    33f8:	b809883a 	mov	r4,r23
    33fc:	1023883a 	mov	r17,r2
    3400:	000372c0 	call	372c <__udivsi3>
    3404:	102f883a 	mov	r23,r2
    3408:	813fffcc 	andi	r4,r16,65535
    340c:	8806943a 	slli	r3,r17,16
    3410:	a004d43a 	srli	r2,r20,16
    3414:	d9000515 	stw	r4,20(sp)
    3418:	b90f383a 	mul	r7,r23,r4
    341c:	d9000317 	ldw	r4,12(sp)
    3420:	18a2b03a 	or	r17,r3,r2
    3424:	a92a983a 	sll	r21,r21,r4
    3428:	e138983a 	sll	fp,fp,r4
    342c:	89c0062e 	bgeu	r17,r7,3448 <__umoddi3+0x34c>
    3430:	8c23883a 	add	r17,r17,r16
    3434:	bdffffc4 	addi	r23,r23,-1
    3438:	8c000336 	bltu	r17,r16,3448 <__umoddi3+0x34c>
    343c:	89c0022e 	bgeu	r17,r7,3448 <__umoddi3+0x34c>
    3440:	bdffffc4 	addi	r23,r23,-1
    3444:	8c23883a 	add	r17,r17,r16
    3448:	d9400417 	ldw	r5,16(sp)
    344c:	89e3c83a 	sub	r17,r17,r7
    3450:	8809883a 	mov	r4,r17
    3454:	000373c0 	call	373c <__umodsi3>
    3458:	d9400417 	ldw	r5,16(sp)
    345c:	8809883a 	mov	r4,r17
    3460:	102d883a 	mov	r22,r2
    3464:	000372c0 	call	372c <__udivsi3>
    3468:	100b883a 	mov	r5,r2
    346c:	d8800517 	ldw	r2,20(sp)
    3470:	b006943a 	slli	r3,r22,16
    3474:	288f383a 	mul	r7,r5,r2
    3478:	a0bfffcc 	andi	r2,r20,65535
    347c:	18acb03a 	or	r22,r3,r2
    3480:	b1c0032e 	bgeu	r22,r7,3490 <__umoddi3+0x394>
    3484:	b42d883a 	add	r22,r22,r16
    3488:	297fffc4 	addi	r5,r5,-1
    348c:	b4005e2e 	bgeu	r22,r16,3608 <__umoddi3+0x50c>
    3490:	b804943a 	slli	r2,r23,16
    3494:	a93fffcc 	andi	r4,r21,65535
    3498:	a80cd43a 	srli	r6,r21,16
    349c:	1144b03a 	or	r2,r2,r5
    34a0:	10ffffcc 	andi	r3,r2,65535
    34a4:	1911383a 	mul	r8,r3,r4
    34a8:	1004d43a 	srli	r2,r2,16
    34ac:	1987383a 	mul	r3,r3,r6
    34b0:	400ad43a 	srli	r5,r8,16
    34b4:	1109383a 	mul	r4,r2,r4
    34b8:	b1edc83a 	sub	r22,r22,r7
    34bc:	1947883a 	add	r3,r3,r5
    34c0:	1907883a 	add	r3,r3,r4
    34c4:	118b383a 	mul	r5,r2,r6
    34c8:	b029883a 	mov	r20,r22
    34cc:	1900032e 	bgeu	r3,r4,34dc <__umoddi3+0x3e0>
    34d0:	00800074 	movhi	r2,1
    34d4:	10800004 	addi	r2,r2,0
    34d8:	288b883a 	add	r5,r5,r2
    34dc:	1804d43a 	srli	r2,r3,16
    34e0:	1808943a 	slli	r4,r3,16
    34e4:	40ffffcc 	andi	r3,r8,65535
    34e8:	1145883a 	add	r2,r2,r5
    34ec:	20cb883a 	add	r5,r4,r3
    34f0:	a0803f36 	bltu	r20,r2,35f0 <__umoddi3+0x4f4>
    34f4:	15003d26 	beq	r2,r20,35ec <__umoddi3+0x4f0>
    34f8:	d83f3126 	beq	sp,zero,31c0 <__umoddi3+0xc4>
    34fc:	e147c83a 	sub	r3,fp,r5
    3500:	b089c83a 	sub	r4,r22,r2
    3504:	e0c5803a 	cmpltu	r2,fp,r3
    3508:	20a9c83a 	sub	r20,r4,r2
    350c:	d8800317 	ldw	r2,12(sp)
    3510:	d9000217 	ldw	r4,8(sp)
    3514:	1886d83a 	srl	r3,r3,r2
    3518:	a10a983a 	sll	r5,r20,r4
    351c:	a084d83a 	srl	r2,r20,r2
    3520:	28e4b03a 	or	r18,r5,r3
    3524:	d8800115 	stw	r2,4(sp)
    3528:	dc800015 	stw	r18,0(sp)
    352c:	003f2406 	br	31c0 <__umoddi3+0xc4>
    3530:	d8800317 	ldw	r2,12(sp)
    3534:	a8aa983a 	sll	r21,r21,r2
    3538:	308dc83a 	sub	r6,r6,r2
    353c:	a1aed83a 	srl	r23,r20,r6
    3540:	a82cd43a 	srli	r22,r21,16
    3544:	e186d83a 	srl	r3,fp,r6
    3548:	a084983a 	sll	r2,r20,r2
    354c:	b809883a 	mov	r4,r23
    3550:	b00b883a 	mov	r5,r22
    3554:	10e8b03a 	or	r20,r2,r3
    3558:	d9800215 	stw	r6,8(sp)
    355c:	000373c0 	call	373c <__umodsi3>
    3560:	b809883a 	mov	r4,r23
    3564:	b00b883a 	mov	r5,r22
    3568:	1021883a 	mov	r16,r2
    356c:	000372c0 	call	372c <__udivsi3>
    3570:	adffffcc 	andi	r23,r21,65535
    3574:	8008943a 	slli	r4,r16,16
    3578:	a006d43a 	srli	r3,r20,16
    357c:	15cf383a 	mul	r7,r2,r23
    3580:	d8800317 	ldw	r2,12(sp)
    3584:	20e0b03a 	or	r16,r4,r3
    3588:	e0b8983a 	sll	fp,fp,r2
    358c:	81c0042e 	bgeu	r16,r7,35a0 <__umoddi3+0x4a4>
    3590:	8561883a 	add	r16,r16,r21
    3594:	85400236 	bltu	r16,r21,35a0 <__umoddi3+0x4a4>
    3598:	81c0012e 	bgeu	r16,r7,35a0 <__umoddi3+0x4a4>
    359c:	8561883a 	add	r16,r16,r21
    35a0:	81e1c83a 	sub	r16,r16,r7
    35a4:	8009883a 	mov	r4,r16
    35a8:	b00b883a 	mov	r5,r22
    35ac:	000373c0 	call	373c <__umodsi3>
    35b0:	8009883a 	mov	r4,r16
    35b4:	b00b883a 	mov	r5,r22
    35b8:	1023883a 	mov	r17,r2
    35bc:	000372c0 	call	372c <__udivsi3>
    35c0:	8806943a 	slli	r3,r17,16
    35c4:	15cf383a 	mul	r7,r2,r23
    35c8:	a0bfffcc 	andi	r2,r20,65535
    35cc:	18a2b03a 	or	r17,r3,r2
    35d0:	89c0042e 	bgeu	r17,r7,35e4 <__umoddi3+0x4e8>
    35d4:	8d63883a 	add	r17,r17,r21
    35d8:	8d400236 	bltu	r17,r21,35e4 <__umoddi3+0x4e8>
    35dc:	89c0012e 	bgeu	r17,r7,35e4 <__umoddi3+0x4e8>
    35e0:	8d63883a 	add	r17,r17,r21
    35e4:	89e9c83a 	sub	r20,r17,r7
    35e8:	003f3006 	br	32ac <__umoddi3+0x1b0>
    35ec:	e17fc22e 	bgeu	fp,r5,34f8 <__umoddi3+0x3fc>
    35f0:	2d49c83a 	sub	r4,r5,r21
    35f4:	1407c83a 	sub	r3,r2,r16
    35f8:	2905803a 	cmpltu	r2,r5,r4
    35fc:	1885c83a 	sub	r2,r3,r2
    3600:	200b883a 	mov	r5,r4
    3604:	003fbc06 	br	34f8 <__umoddi3+0x3fc>
    3608:	b1ffa12e 	bgeu	r22,r7,3490 <__umoddi3+0x394>
    360c:	297fffc4 	addi	r5,r5,-1
    3610:	b42d883a 	add	r22,r22,r16
    3614:	003f9e06 	br	3490 <__umoddi3+0x394>

00003618 <udivmodsi4>:
    3618:	00800044 	movi	r2,1
    361c:	000f883a 	mov	r7,zero
    3620:	2900082e 	bgeu	r5,r4,3644 <udivmodsi4+0x2c>
    3624:	28000716 	blt	r5,zero,3644 <udivmodsi4+0x2c>
    3628:	294b883a 	add	r5,r5,r5
    362c:	1085883a 	add	r2,r2,r2
    3630:	29000e2e 	bgeu	r5,r4,366c <udivmodsi4+0x54>
    3634:	1007003a 	cmpeq	r3,r2,zero
    3638:	1800081e 	bne	r3,zero,365c <udivmodsi4+0x44>
    363c:	283ffa0e 	bge	r5,zero,3628 <udivmodsi4+0x10>
    3640:	1800061e 	bne	r3,zero,365c <udivmodsi4+0x44>
    3644:	21400236 	bltu	r4,r5,3650 <udivmodsi4+0x38>
    3648:	2149c83a 	sub	r4,r4,r5
    364c:	388eb03a 	or	r7,r7,r2
    3650:	1004d07a 	srli	r2,r2,1
    3654:	280ad07a 	srli	r5,r5,1
    3658:	103ffa1e 	bne	r2,zero,3644 <udivmodsi4+0x2c>
    365c:	3000011e 	bne	r6,zero,3664 <udivmodsi4+0x4c>
    3660:	3809883a 	mov	r4,r7
    3664:	2005883a 	mov	r2,r4
    3668:	f800283a 	ret
    366c:	1007003a 	cmpeq	r3,r2,zero
    3670:	183ff426 	beq	r3,zero,3644 <udivmodsi4+0x2c>
    3674:	003ff906 	br	365c <udivmodsi4+0x44>

00003678 <__divsi3>:
    3678:	defffe04 	addi	sp,sp,-8
    367c:	dc000015 	stw	r16,0(sp)
    3680:	dfc00115 	stw	ra,4(sp)
    3684:	000d883a 	mov	r6,zero
    3688:	0021883a 	mov	r16,zero
    368c:	20000b16 	blt	r4,zero,36bc <__divsi3+0x44>
    3690:	28000d16 	blt	r5,zero,36c8 <__divsi3+0x50>
    3694:	00036180 	call	3618 <udivmodsi4>
    3698:	1007883a 	mov	r3,r2
    369c:	8005003a 	cmpeq	r2,r16,zero
    36a0:	1000011e 	bne	r2,zero,36a8 <__divsi3+0x30>
    36a4:	00c7c83a 	sub	r3,zero,r3
    36a8:	1805883a 	mov	r2,r3
    36ac:	dfc00117 	ldw	ra,4(sp)
    36b0:	dc000017 	ldw	r16,0(sp)
    36b4:	dec00204 	addi	sp,sp,8
    36b8:	f800283a 	ret
    36bc:	0109c83a 	sub	r4,zero,r4
    36c0:	0021003a 	cmpeq	r16,zero,zero
    36c4:	283ff30e 	bge	r5,zero,3694 <__divsi3+0x1c>
    36c8:	014bc83a 	sub	r5,zero,r5
    36cc:	8021003a 	cmpeq	r16,r16,zero
    36d0:	003ff006 	br	3694 <__divsi3+0x1c>

000036d4 <__modsi3>:
    36d4:	defffe04 	addi	sp,sp,-8
    36d8:	dc000015 	stw	r16,0(sp)
    36dc:	dfc00115 	stw	ra,4(sp)
    36e0:	01800044 	movi	r6,1
    36e4:	0021883a 	mov	r16,zero
    36e8:	20000b16 	blt	r4,zero,3718 <__modsi3+0x44>
    36ec:	28000d16 	blt	r5,zero,3724 <__modsi3+0x50>
    36f0:	00036180 	call	3618 <udivmodsi4>
    36f4:	1007883a 	mov	r3,r2
    36f8:	8005003a 	cmpeq	r2,r16,zero
    36fc:	1000011e 	bne	r2,zero,3704 <__modsi3+0x30>
    3700:	00c7c83a 	sub	r3,zero,r3
    3704:	1805883a 	mov	r2,r3
    3708:	dfc00117 	ldw	ra,4(sp)
    370c:	dc000017 	ldw	r16,0(sp)
    3710:	dec00204 	addi	sp,sp,8
    3714:	f800283a 	ret
    3718:	0109c83a 	sub	r4,zero,r4
    371c:	3021883a 	mov	r16,r6
    3720:	283ff30e 	bge	r5,zero,36f0 <__modsi3+0x1c>
    3724:	014bc83a 	sub	r5,zero,r5
    3728:	003ff106 	br	36f0 <__modsi3+0x1c>

0000372c <__udivsi3>:
    372c:	000d883a 	mov	r6,zero
    3730:	02000034 	movhi	r8,0
    3734:	420d8604 	addi	r8,r8,13848
    3738:	4000683a 	jmp	r8

0000373c <__umodsi3>:
    373c:	01800044 	movi	r6,1
    3740:	02000034 	movhi	r8,0
    3744:	420d8604 	addi	r8,r8,13848
    3748:	4000683a 	jmp	r8

0000374c <__GI_memcpy>:
    374c:	008003c4 	movi	r2,15
    3750:	2019883a 	mov	r12,r4
    3754:	1180952e 	bgeu	r2,r6,39ac <__GI_memcpy+0x260>
    3758:	0105c83a 	sub	r2,zero,r4
    375c:	108000cc 	andi	r2,r2,3
    3760:	1007883a 	mov	r3,r2
    3764:	308dc83a 	sub	r6,r6,r2
    3768:	18000626 	beq	r3,zero,3784 <__GI_memcpy+0x38>
    376c:	28800003 	ldbu	r2,0(r5)
    3770:	18ffffc4 	addi	r3,r3,-1
    3774:	29400044 	addi	r5,r5,1
    3778:	60800005 	stb	r2,0(r12)
    377c:	63000044 	addi	r12,r12,1
    3780:	003ff906 	br	3768 <__GI_memcpy+0x1c>
    3784:	288000cc 	andi	r2,r5,3
    3788:	3014d0ba 	srli	r10,r6,2
    378c:	1000431e 	bne	r2,zero,389c <__GI_memcpy+0x150>
    3790:	50c001cc 	andi	r3,r10,7
    3794:	008001c4 	movi	r2,7
    3798:	6011883a 	mov	r8,r12
    379c:	2813883a 	mov	r9,r5
    37a0:	5017883a 	mov	r11,r10
    37a4:	10c02736 	bltu	r2,r3,3844 <__GI_memcpy+0xf8>
    37a8:	180490ba 	slli	r2,r3,2
    37ac:	00c00034 	movhi	r3,0
    37b0:	18d13c04 	addi	r3,r3,17648
    37b4:	29c00017 	ldw	r7,0(r5)
    37b8:	10c5883a 	add	r2,r2,r3
    37bc:	10800017 	ldw	r2,0(r2)
    37c0:	1000683a 	jmp	r2
    37c4:	3805883a 	mov	r2,r7
    37c8:	52c00184 	addi	r11,r10,6
    37cc:	2a7ffa04 	addi	r9,r5,-24
    37d0:	623ff904 	addi	r8,r12,-28
    37d4:	00002906 	br	387c <__GI_memcpy+0x130>
    37d8:	52c00144 	addi	r11,r10,5
    37dc:	2a7ffb04 	addi	r9,r5,-20
    37e0:	623ffa04 	addi	r8,r12,-24
    37e4:	00002306 	br	3874 <__GI_memcpy+0x128>
    37e8:	3805883a 	mov	r2,r7
    37ec:	52c00104 	addi	r11,r10,4
    37f0:	2a7ffc04 	addi	r9,r5,-16
    37f4:	623ffb04 	addi	r8,r12,-20
    37f8:	00001c06 	br	386c <__GI_memcpy+0x120>
    37fc:	52c000c4 	addi	r11,r10,3
    3800:	2a7ffd04 	addi	r9,r5,-12
    3804:	623ffc04 	addi	r8,r12,-16
    3808:	00001606 	br	3864 <__GI_memcpy+0x118>
    380c:	3805883a 	mov	r2,r7
    3810:	52c00084 	addi	r11,r10,2
    3814:	2a7ffe04 	addi	r9,r5,-8
    3818:	623ffd04 	addi	r8,r12,-12
    381c:	00000f06 	br	385c <__GI_memcpy+0x110>
    3820:	52c00044 	addi	r11,r10,1
    3824:	2a7fff04 	addi	r9,r5,-4
    3828:	623ffe04 	addi	r8,r12,-8
    382c:	00000906 	br	3854 <__GI_memcpy+0x108>
    3830:	3805883a 	mov	r2,r7
    3834:	623fff04 	addi	r8,r12,-4
    3838:	00000406 	br	384c <__GI_memcpy+0x100>
    383c:	52ffffc4 	addi	r11,r10,-1
    3840:	2a400104 	addi	r9,r5,4
    3844:	48800017 	ldw	r2,0(r9)
    3848:	41c00015 	stw	r7,0(r8)
    384c:	49c00117 	ldw	r7,4(r9)
    3850:	40800115 	stw	r2,4(r8)
    3854:	48800217 	ldw	r2,8(r9)
    3858:	41c00215 	stw	r7,8(r8)
    385c:	49c00317 	ldw	r7,12(r9)
    3860:	40800315 	stw	r2,12(r8)
    3864:	48800417 	ldw	r2,16(r9)
    3868:	41c00415 	stw	r7,16(r8)
    386c:	49c00517 	ldw	r7,20(r9)
    3870:	40800515 	stw	r2,20(r8)
    3874:	48800617 	ldw	r2,24(r9)
    3878:	41c00615 	stw	r7,24(r8)
    387c:	5afffe04 	addi	r11,r11,-8
    3880:	49c00717 	ldw	r7,28(r9)
    3884:	40800715 	stw	r2,28(r8)
    3888:	4a400804 	addi	r9,r9,32
    388c:	42000804 	addi	r8,r8,32
    3890:	583fec1e 	bne	r11,zero,3844 <__GI_memcpy+0xf8>
    3894:	41c00015 	stw	r7,0(r8)
    3898:	00003f06 	br	3998 <__GI_memcpy+0x24c>
    389c:	101a90fa 	slli	r13,r2,3
    38a0:	00800804 	movi	r2,32
    38a4:	50c000cc 	andi	r3,r10,3
    38a8:	135dc83a 	sub	r14,r2,r13
    38ac:	02400044 	movi	r9,1
    38b0:	00bfff04 	movi	r2,-4
    38b4:	288e703a 	and	r7,r5,r2
    38b8:	6011883a 	mov	r8,r12
    38bc:	1a401626 	beq	r3,r9,3918 <__GI_memcpy+0x1cc>
    38c0:	1a401036 	bltu	r3,r9,3904 <__GI_memcpy+0x1b8>
    38c4:	00800084 	movi	r2,2
    38c8:	18800326 	beq	r3,r2,38d8 <__GI_memcpy+0x18c>
    38cc:	008000c4 	movi	r2,3
    38d0:	18800726 	beq	r3,r2,38f0 <__GI_memcpy+0x1a4>
    38d4:	00001406 	br	3928 <__GI_memcpy+0x1dc>
    38d8:	3ac00017 	ldw	r11,0(r7)
    38dc:	3bc00117 	ldw	r15,4(r7)
    38e0:	50d5883a 	add	r10,r10,r3
    38e4:	39ffff04 	addi	r7,r7,-4
    38e8:	623ffd04 	addi	r8,r12,-12
    38ec:	00001d06 	br	3964 <__GI_memcpy+0x218>
    38f0:	3a400017 	ldw	r9,0(r7)
    38f4:	3ac00117 	ldw	r11,4(r7)
    38f8:	52800044 	addi	r10,r10,1
    38fc:	623ffe04 	addi	r8,r12,-8
    3900:	00001306 	br	3950 <__GI_memcpy+0x204>
    3904:	3ac00017 	ldw	r11,0(r7)
    3908:	3a400117 	ldw	r9,4(r7)
    390c:	623fff04 	addi	r8,r12,-4
    3910:	39c00104 	addi	r7,r7,4
    3914:	00000906 	br	393c <__GI_memcpy+0x1f0>
    3918:	3bc00017 	ldw	r15,0(r7)
    391c:	3ac00117 	ldw	r11,4(r7)
    3920:	50d5c83a 	sub	r10,r10,r3
    3924:	39c00204 	addi	r7,r7,8
    3928:	7b44d83a 	srl	r2,r15,r13
    392c:	5b86983a 	sll	r3,r11,r14
    3930:	3a400017 	ldw	r9,0(r7)
    3934:	10c4b03a 	or	r2,r2,r3
    3938:	40800015 	stw	r2,0(r8)
    393c:	5b44d83a 	srl	r2,r11,r13
    3940:	4b86983a 	sll	r3,r9,r14
    3944:	3ac00117 	ldw	r11,4(r7)
    3948:	10c4b03a 	or	r2,r2,r3
    394c:	40800115 	stw	r2,4(r8)
    3950:	4b44d83a 	srl	r2,r9,r13
    3954:	5b86983a 	sll	r3,r11,r14
    3958:	3bc00217 	ldw	r15,8(r7)
    395c:	10c4b03a 	or	r2,r2,r3
    3960:	40800215 	stw	r2,8(r8)
    3964:	5b44d83a 	srl	r2,r11,r13
    3968:	7b86983a 	sll	r3,r15,r14
    396c:	52bfff04 	addi	r10,r10,-4
    3970:	3ac00317 	ldw	r11,12(r7)
    3974:	10c4b03a 	or	r2,r2,r3
    3978:	40800315 	stw	r2,12(r8)
    397c:	39c00404 	addi	r7,r7,16
    3980:	42000404 	addi	r8,r8,16
    3984:	503fe81e 	bne	r10,zero,3928 <__GI_memcpy+0x1dc>
    3988:	7b44d83a 	srl	r2,r15,r13
    398c:	5b86983a 	sll	r3,r11,r14
    3990:	10c4b03a 	or	r2,r2,r3
    3994:	40800015 	stw	r2,0(r8)
    3998:	00bfff04 	movi	r2,-4
    399c:	3084703a 	and	r2,r6,r2
    39a0:	6099883a 	add	r12,r12,r2
    39a4:	288b883a 	add	r5,r5,r2
    39a8:	318000cc 	andi	r6,r6,3
    39ac:	30000626 	beq	r6,zero,39c8 <__GI_memcpy+0x27c>
    39b0:	28800003 	ldbu	r2,0(r5)
    39b4:	31bfffc4 	addi	r6,r6,-1
    39b8:	29400044 	addi	r5,r5,1
    39bc:	60800005 	stb	r2,0(r12)
    39c0:	63000044 	addi	r12,r12,1
    39c4:	003ff906 	br	39ac <__GI_memcpy+0x260>
    39c8:	2005883a 	mov	r2,r4
    39cc:	f800283a 	ret

000039d0 <__GI_memset>:
    39d0:	008001c4 	movi	r2,7
    39d4:	200f883a 	mov	r7,r4
    39d8:	1180212e 	bgeu	r2,r6,3a60 <__GI_memset+0x90>
    39dc:	2a003fcc 	andi	r8,r5,255
    39e0:	4004923a 	slli	r2,r8,8
    39e4:	20c000cc 	andi	r3,r4,3
    39e8:	4090b03a 	or	r8,r8,r2
    39ec:	4004943a 	slli	r2,r8,16
    39f0:	4090b03a 	or	r8,r8,r2
    39f4:	18000526 	beq	r3,zero,3a0c <__GI_memset+0x3c>
    39f8:	39400005 	stb	r5,0(r7)
    39fc:	39c00044 	addi	r7,r7,1
    3a00:	388000cc 	andi	r2,r7,3
    3a04:	31bfffc4 	addi	r6,r6,-1
    3a08:	103ffb1e 	bne	r2,zero,39f8 <__GI_memset+0x28>
    3a0c:	3004d17a 	srli	r2,r6,5
    3a10:	10000b26 	beq	r2,zero,3a40 <__GI_memset+0x70>
    3a14:	3a000015 	stw	r8,0(r7)
    3a18:	3a000115 	stw	r8,4(r7)
    3a1c:	3a000215 	stw	r8,8(r7)
    3a20:	3a000315 	stw	r8,12(r7)
    3a24:	3a000415 	stw	r8,16(r7)
    3a28:	3a000515 	stw	r8,20(r7)
    3a2c:	3a000615 	stw	r8,24(r7)
    3a30:	3a000715 	stw	r8,28(r7)
    3a34:	10bfffc4 	addi	r2,r2,-1
    3a38:	39c00804 	addi	r7,r7,32
    3a3c:	003ff406 	br	3a10 <__GI_memset+0x40>
    3a40:	318007cc 	andi	r6,r6,31
    3a44:	3004d0ba 	srli	r2,r6,2
    3a48:	10000426 	beq	r2,zero,3a5c <__GI_memset+0x8c>
    3a4c:	3a000015 	stw	r8,0(r7)
    3a50:	10bfffc4 	addi	r2,r2,-1
    3a54:	39c00104 	addi	r7,r7,4
    3a58:	003ffb06 	br	3a48 <__GI_memset+0x78>
    3a5c:	318000cc 	andi	r6,r6,3
    3a60:	30000426 	beq	r6,zero,3a74 <__GI_memset+0xa4>
    3a64:	39400005 	stb	r5,0(r7)
    3a68:	31bfffc4 	addi	r6,r6,-1
    3a6c:	39c00044 	addi	r7,r7,1
    3a70:	003ffb06 	br	3a60 <__GI_memset+0x90>
    3a74:	2005883a 	mov	r2,r4
    3a78:	f800283a 	ret

00003a7c <__GI_strcmp>:
    3a7c:	20800003 	ldbu	r2,0(r4)
    3a80:	28c00003 	ldbu	r3,0(r5)
    3a84:	21000044 	addi	r4,r4,1
    3a88:	29400044 	addi	r5,r5,1
    3a8c:	1000021e 	bne	r2,zero,3a98 <__GI_strcmp+0x1c>
    3a90:	00c5c83a 	sub	r2,zero,r3
    3a94:	f800283a 	ret
    3a98:	10fff826 	beq	r2,r3,3a7c <__GI_strcmp>
    3a9c:	10c5c83a 	sub	r2,r2,r3
    3aa0:	f800283a 	ret

00003aa4 <__GI_strlen>:
    3aa4:	200b883a 	mov	r5,r4
    3aa8:	208000cc 	andi	r2,r4,3
    3aac:	2007883a 	mov	r3,r4
    3ab0:	10000726 	beq	r2,zero,3ad0 <__GI_strlen+0x2c>
    3ab4:	18800007 	ldb	r2,0(r3)
    3ab8:	1000021e 	bne	r2,zero,3ac4 <__GI_strlen+0x20>
    3abc:	1945c83a 	sub	r2,r3,r5
    3ac0:	f800283a 	ret
    3ac4:	18c00044 	addi	r3,r3,1
    3ac8:	188000cc 	andi	r2,r3,3
    3acc:	003ff806 	br	3ab0 <__GI_strlen+0xc>
    3ad0:	01e02074 	movhi	r7,32897
    3ad4:	39e02004 	addi	r7,r7,-32640
    3ad8:	01804074 	movhi	r6,257
    3adc:	31804044 	addi	r6,r6,257
    3ae0:	18800017 	ldw	r2,0(r3)
    3ae4:	18c00104 	addi	r3,r3,4
    3ae8:	193fff04 	addi	r4,r3,-4
    3aec:	1185c83a 	sub	r2,r2,r6
    3af0:	11c4703a 	and	r2,r2,r7
    3af4:	103ffa26 	beq	r2,zero,3ae0 <__GI_strlen+0x3c>
    3af8:	20800007 	ldb	r2,0(r4)
    3afc:	1000021e 	bne	r2,zero,3b08 <__GI_strlen+0x64>
    3b00:	2145c83a 	sub	r2,r4,r5
    3b04:	f800283a 	ret
    3b08:	20800047 	ldb	r2,1(r4)
    3b0c:	1000031e 	bne	r2,zero,3b1c <__GI_strlen+0x78>
    3b10:	2145c83a 	sub	r2,r4,r5
    3b14:	10800044 	addi	r2,r2,1
    3b18:	f800283a 	ret
    3b1c:	20800087 	ldb	r2,2(r4)
    3b20:	1000031e 	bne	r2,zero,3b30 <__GI_strlen+0x8c>
    3b24:	2145c83a 	sub	r2,r4,r5
    3b28:	10800084 	addi	r2,r2,2
    3b2c:	f800283a 	ret
    3b30:	208000c7 	ldb	r2,3(r4)
    3b34:	103fea1e 	bne	r2,zero,3ae0 <__GI_strlen+0x3c>
    3b38:	2145c83a 	sub	r2,r4,r5
    3b3c:	108000c4 	addi	r2,r2,3
    3b40:	f800283a 	ret

00003b44 <__GI_strncmp>:
    3b44:	008000c4 	movi	r2,3
    3b48:	0013883a 	mov	r9,zero
    3b4c:	0011883a 	mov	r8,zero
    3b50:	1180292e 	bgeu	r2,r6,3bf8 <__GI_strncmp+0xb4>
    3b54:	3014d0ba 	srli	r10,r6,2
    3b58:	20800003 	ldbu	r2,0(r4)
    3b5c:	28c00003 	ldbu	r3,0(r5)
    3b60:	52bfffc4 	addi	r10,r10,-1
    3b64:	100f883a 	mov	r7,r2
    3b68:	21000044 	addi	r4,r4,1
    3b6c:	29400044 	addi	r5,r5,1
    3b70:	1811883a 	mov	r8,r3
    3b74:	18803fcc 	andi	r2,r3,255
    3b78:	38002b26 	beq	r7,zero,3c28 <__GI_strncmp+0xe4>
    3b7c:	38802a1e 	bne	r7,r2,3c28 <__GI_strncmp+0xe4>
    3b80:	20800003 	ldbu	r2,0(r4)
    3b84:	28c00003 	ldbu	r3,0(r5)
    3b88:	21000044 	addi	r4,r4,1
    3b8c:	100f883a 	mov	r7,r2
    3b90:	29400044 	addi	r5,r5,1
    3b94:	1811883a 	mov	r8,r3
    3b98:	18803fcc 	andi	r2,r3,255
    3b9c:	38002226 	beq	r7,zero,3c28 <__GI_strncmp+0xe4>
    3ba0:	3880211e 	bne	r7,r2,3c28 <__GI_strncmp+0xe4>
    3ba4:	20800003 	ldbu	r2,0(r4)
    3ba8:	28c00003 	ldbu	r3,0(r5)
    3bac:	21000044 	addi	r4,r4,1
    3bb0:	100f883a 	mov	r7,r2
    3bb4:	29400044 	addi	r5,r5,1
    3bb8:	1811883a 	mov	r8,r3
    3bbc:	18803fcc 	andi	r2,r3,255
    3bc0:	38001926 	beq	r7,zero,3c28 <__GI_strncmp+0xe4>
    3bc4:	3880181e 	bne	r7,r2,3c28 <__GI_strncmp+0xe4>
    3bc8:	20800003 	ldbu	r2,0(r4)
    3bcc:	28c00003 	ldbu	r3,0(r5)
    3bd0:	21000044 	addi	r4,r4,1
    3bd4:	11c03fcc 	andi	r7,r2,255
    3bd8:	1013883a 	mov	r9,r2
    3bdc:	1811883a 	mov	r8,r3
    3be0:	18803fcc 	andi	r2,r3,255
    3be4:	29400044 	addi	r5,r5,1
    3be8:	38000f26 	beq	r7,zero,3c28 <__GI_strncmp+0xe4>
    3bec:	38800e1e 	bne	r7,r2,3c28 <__GI_strncmp+0xe4>
    3bf0:	503fd91e 	bne	r10,zero,3b58 <__GI_strncmp+0x14>
    3bf4:	318000cc 	andi	r6,r6,3
    3bf8:	30000e26 	beq	r6,zero,3c34 <__GI_strncmp+0xf0>
    3bfc:	20800003 	ldbu	r2,0(r4)
    3c00:	28c00003 	ldbu	r3,0(r5)
    3c04:	31bfffc4 	addi	r6,r6,-1
    3c08:	11c03fcc 	andi	r7,r2,255
    3c0c:	1013883a 	mov	r9,r2
    3c10:	1811883a 	mov	r8,r3
    3c14:	18803fcc 	andi	r2,r3,255
    3c18:	21000044 	addi	r4,r4,1
    3c1c:	29400044 	addi	r5,r5,1
    3c20:	38000126 	beq	r7,zero,3c28 <__GI_strncmp+0xe4>
    3c24:	38bff426 	beq	r7,r2,3bf8 <__GI_strncmp+0xb4>
    3c28:	40803fcc 	andi	r2,r8,255
    3c2c:	3885c83a 	sub	r2,r7,r2
    3c30:	f800283a 	ret
    3c34:	48c03fcc 	andi	r3,r9,255
    3c38:	40803fcc 	andi	r2,r8,255
    3c3c:	1885c83a 	sub	r2,r3,r2
    3c40:	f800283a 	ret

00003c44 <__GI___uClibc_init>:
    3c44:	d0a01417 	ldw	r2,-32688(gp)
    3c48:	deffff04 	addi	sp,sp,-4
    3c4c:	dfc00015 	stw	ra,0(sp)
    3c50:	10000e1e 	bne	r2,zero,3c8c <__GI___uClibc_init+0x48>
    3c54:	00800044 	movi	r2,1
    3c58:	d0a01415 	stw	r2,-32688(gp)
    3c5c:	00840004 	movi	r2,4096
    3c60:	d0a00915 	stw	r2,-32732(gp)
    3c64:	00800034 	movhi	r2,0
    3c68:	10800004 	addi	r2,r2,0
    3c6c:	10000126 	beq	r2,zero,3c74 <__GI___uClibc_init+0x30>
    3c70:	00000000 	call	0 <_init>
    3c74:	02000034 	movhi	r8,0
    3c78:	42000004 	addi	r8,r8,0
    3c7c:	40000326 	beq	r8,zero,3c8c <__GI___uClibc_init+0x48>
    3c80:	dfc00017 	ldw	ra,0(sp)
    3c84:	dec00104 	addi	sp,sp,4
    3c88:	4000683a 	jmp	r8
    3c8c:	dfc00017 	ldw	ra,0(sp)
    3c90:	dec00104 	addi	sp,sp,4
    3c94:	f800283a 	ret

00003c98 <__GI___uClibc_fini>:
    3c98:	00c00034 	movhi	r3,0
    3c9c:	18d14404 	addi	r3,r3,17680
    3ca0:	00800034 	movhi	r2,0
    3ca4:	10914404 	addi	r2,r2,17680
    3ca8:	defffd04 	addi	sp,sp,-12
    3cac:	10c5c83a 	sub	r2,r2,r3
    3cb0:	dc000115 	stw	r16,4(sp)
    3cb4:	1021d0ba 	srai	r16,r2,2
    3cb8:	00bfffc4 	movi	r2,-1
    3cbc:	dfc00215 	stw	ra,8(sp)
    3cc0:	843fffc4 	addi	r16,r16,-1
    3cc4:	dc400015 	stw	r17,0(sp)
    3cc8:	80800826 	beq	r16,r2,3cec <__GI___uClibc_fini+0x54>
    3ccc:	800490ba 	slli	r2,r16,2
    3cd0:	10e3883a 	add	r17,r2,r3
    3cd4:	88800017 	ldw	r2,0(r17)
    3cd8:	843fffc4 	addi	r16,r16,-1
    3cdc:	8c7fff04 	addi	r17,r17,-4
    3ce0:	103ee83a 	callr	r2
    3ce4:	00bfffc4 	movi	r2,-1
    3ce8:	80bffa1e 	bne	r16,r2,3cd4 <__GI___uClibc_fini+0x3c>
    3cec:	d0a00817 	ldw	r2,-32736(gp)
    3cf0:	10000126 	beq	r2,zero,3cf8 <__GI___uClibc_fini+0x60>
    3cf4:	103ee83a 	callr	r2
    3cf8:	d2200717 	ldw	r8,-32740(gp)
    3cfc:	40000526 	beq	r8,zero,3d14 <__GI___uClibc_fini+0x7c>
    3d00:	dfc00217 	ldw	ra,8(sp)
    3d04:	dc000117 	ldw	r16,4(sp)
    3d08:	dc400017 	ldw	r17,0(sp)
    3d0c:	dec00304 	addi	sp,sp,12
    3d10:	4000683a 	jmp	r8
    3d14:	dfc00217 	ldw	ra,8(sp)
    3d18:	dc000117 	ldw	r16,4(sp)
    3d1c:	dc400017 	ldw	r17,0(sp)
    3d20:	dec00304 	addi	sp,sp,12
    3d24:	f800283a 	ret

00003d28 <__uClibc_main>:
    3d28:	280490ba 	slli	r2,r5,2
    3d2c:	defff804 	addi	sp,sp,-32
    3d30:	dd400115 	stw	r21,4(sp)
    3d34:	282b883a 	mov	r21,r5
    3d38:	308b883a 	add	r5,r6,r2
    3d3c:	d8800a17 	ldw	r2,40(sp)
    3d40:	28c00104 	addi	r3,r5,4
    3d44:	dc800415 	stw	r18,16(sp)
    3d48:	d0a00c15 	stw	r2,-32720(gp)
    3d4c:	d8800917 	ldw	r2,36(sp)
    3d50:	dcc00315 	stw	r19,12(sp)
    3d54:	dd800015 	stw	r22,0(sp)
    3d58:	dfc00715 	stw	ra,28(sp)
    3d5c:	dc000615 	stw	r16,24(sp)
    3d60:	dc400515 	stw	r17,20(sp)
    3d64:	dd000215 	stw	r20,8(sp)
    3d68:	d0a00715 	stw	r2,-32740(gp)
    3d6c:	d0e00a15 	stw	r3,-32728(gp)
    3d70:	30800017 	ldw	r2,0(r6)
    3d74:	3025883a 	mov	r18,r6
    3d78:	202d883a 	mov	r22,r4
    3d7c:	3827883a 	mov	r19,r7
    3d80:	1880011e 	bne	r3,r2,3d88 <__uClibc_main+0x60>
    3d84:	d1600a15 	stw	r5,-32728(gp)
    3d88:	0003c440 	call	3c44 <__GI___uClibc_init>
    3d8c:	05000034 	movhi	r20,0
    3d90:	a5114404 	addi	r20,r20,17680
    3d94:	01400034 	movhi	r5,0
    3d98:	29514404 	addi	r5,r5,17680
    3d9c:	a145c83a 	sub	r2,r20,r5
    3da0:	91000017 	ldw	r4,0(r18)
    3da4:	d8c00817 	ldw	r3,32(sp)
    3da8:	1005d0ba 	srai	r2,r2,2
    3dac:	0023883a 	mov	r17,zero
    3db0:	d0e00815 	stw	r3,-32736(gp)
    3db4:	d1200b15 	stw	r4,-32724(gp)
    3db8:	00800a2e 	bgeu	zero,r2,3de4 <__uClibc_main+0xbc>
    3dbc:	2821883a 	mov	r16,r5
    3dc0:	80800017 	ldw	r2,0(r16)
    3dc4:	8c400044 	addi	r17,r17,1
    3dc8:	84000104 	addi	r16,r16,4
    3dcc:	103ee83a 	callr	r2
    3dd0:	00800034 	movhi	r2,0
    3dd4:	10914404 	addi	r2,r2,17680
    3dd8:	a085c83a 	sub	r2,r20,r2
    3ddc:	1005d0ba 	srai	r2,r2,2
    3de0:	88bff736 	bltu	r17,r2,3dc0 <__uClibc_main+0x98>
    3de4:	98000126 	beq	r19,zero,3dec <__uClibc_main+0xc4>
    3de8:	983ee83a 	callr	r19
    3dec:	04c00034 	movhi	r19,0
    3df0:	9cd14404 	addi	r19,r19,17680
    3df4:	00c00034 	movhi	r3,0
    3df8:	18d14404 	addi	r3,r3,17680
    3dfc:	98c5c83a 	sub	r2,r19,r3
    3e00:	1005d0ba 	srai	r2,r2,2
    3e04:	0023883a 	mov	r17,zero
    3e08:	00800a2e 	bgeu	zero,r2,3e34 <__uClibc_main+0x10c>
    3e0c:	1821883a 	mov	r16,r3
    3e10:	80800017 	ldw	r2,0(r16)
    3e14:	8c400044 	addi	r17,r17,1
    3e18:	84000104 	addi	r16,r16,4
    3e1c:	103ee83a 	callr	r2
    3e20:	00800034 	movhi	r2,0
    3e24:	10914404 	addi	r2,r2,17680
    3e28:	9885c83a 	sub	r2,r19,r2
    3e2c:	1005d0ba 	srai	r2,r2,2
    3e30:	88bff736 	bltu	r17,r2,3e10 <__uClibc_main+0xe8>
    3e34:	00800034 	movhi	r2,0
    3e38:	108fcb04 	addi	r2,r2,16172
    3e3c:	10000226 	beq	r2,zero,3e48 <__uClibc_main+0x120>
    3e40:	0003f2c0 	call	3f2c <__GI___errno_location>
    3e44:	10000015 	stw	zero,0(r2)
    3e48:	00800034 	movhi	r2,0
    3e4c:	10800004 	addi	r2,r2,0
    3e50:	10000226 	beq	r2,zero,3e5c <__uClibc_main+0x134>
    3e54:	00000000 	call	0 <_init>
    3e58:	10000015 	stw	zero,0(r2)
    3e5c:	d1a00a17 	ldw	r6,-32728(gp)
    3e60:	a809883a 	mov	r4,r21
    3e64:	900b883a 	mov	r5,r18
    3e68:	b03ee83a 	callr	r22
    3e6c:	1009883a 	mov	r4,r2
    3e70:	0003e800 	call	3e80 <__GI_exit>

00003e74 <__pthread_mutex_init>:
    3e74:	0005883a 	mov	r2,zero
    3e78:	f800283a 	ret

00003e7c <_pthread_cleanup_pop_restore>:
    3e7c:	f800283a 	ret

00003e80 <__GI_exit>:
    3e80:	defffa04 	addi	sp,sp,-24
    3e84:	dc000415 	stw	r16,16(sp)
    3e88:	01400034 	movhi	r5,0
    3e8c:	294f9d04 	addi	r5,r5,15988
    3e90:	01800034 	movhi	r6,0
    3e94:	31914904 	addi	r6,r6,17700
    3e98:	2021883a 	mov	r16,r4
    3e9c:	d809883a 	mov	r4,sp
    3ea0:	dfc00515 	stw	ra,20(sp)
    3ea4:	0003e7c0 	call	3e7c <_pthread_cleanup_pop_restore>
    3ea8:	01000034 	movhi	r4,0
    3eac:	21114904 	addi	r4,r4,17700
    3eb0:	0003e740 	call	3e74 <__pthread_mutex_init>
    3eb4:	d0a00d17 	ldw	r2,-32716(gp)
    3eb8:	10000226 	beq	r2,zero,3ec4 <__GI_exit+0x44>
    3ebc:	8009883a 	mov	r4,r16
    3ec0:	103ee83a 	callr	r2
    3ec4:	d809883a 	mov	r4,sp
    3ec8:	01400044 	movi	r5,1
    3ecc:	0003e7c0 	call	3e7c <_pthread_cleanup_pop_restore>
    3ed0:	0003c980 	call	3c98 <__GI___uClibc_fini>
    3ed4:	00800034 	movhi	r2,0
    3ed8:	10800004 	addi	r2,r2,0
    3edc:	10000126 	beq	r2,zero,3ee4 <__GI_exit+0x64>
    3ee0:	00000000 	call	0 <_init>
    3ee4:	8009883a 	mov	r4,r16
    3ee8:	0003eec0 	call	3eec <__GI__exit>

00003eec <__GI__exit>:
    3eec:	defffd04 	addi	sp,sp,-12
    3ef0:	dc400015 	stw	r17,0(sp)
    3ef4:	dfc00215 	stw	ra,8(sp)
    3ef8:	dc000115 	stw	r16,4(sp)
    3efc:	2023883a 	mov	r17,r4
    3f00:	00800004 	movi	r2,0
    3f04:	00c00044 	movi	r3,1
    3f08:	8809883a 	mov	r4,r17
    3f0c:	003b683a 	trap
    3f10:	100b883a 	mov	r5,r2
    3f14:	00bfe084 	movi	r2,-126
    3f18:	0161c83a 	sub	r16,zero,r5
    3f1c:	117ff82e 	bgeu	r2,r5,3f00 <__GI__exit+0x14>
    3f20:	0003f2c0 	call	3f2c <__GI___errno_location>
    3f24:	14000015 	stw	r16,0(r2)
    3f28:	003ff506 	br	3f00 <__GI__exit+0x14>

00003f2c <__GI___errno_location>:
    3f2c:	d0a00f04 	addi	r2,gp,-32708
    3f30:	f800283a 	ret

00003f34 <__do_global_ctors_aux>:
    3f34:	defffd04 	addi	sp,sp,-12
    3f38:	dc000115 	stw	r16,4(sp)
    3f3c:	04000034 	movhi	r16,0
    3f40:	84114f04 	addi	r16,r16,17724
    3f44:	80800017 	ldw	r2,0(r16)
    3f48:	00ffffc4 	movi	r3,-1
    3f4c:	dfc00215 	stw	ra,8(sp)
    3f50:	dc400015 	stw	r17,0(sp)
    3f54:	10c00526 	beq	r2,r3,3f6c <__do_global_ctors_aux+0x38>
    3f58:	1823883a 	mov	r17,r3
    3f5c:	843fff04 	addi	r16,r16,-4
    3f60:	103ee83a 	callr	r2
    3f64:	80800017 	ldw	r2,0(r16)
    3f68:	147ffc1e 	bne	r2,r17,3f5c <__do_global_ctors_aux+0x28>
    3f6c:	dfc00217 	ldw	ra,8(sp)
    3f70:	dc000117 	ldw	r16,4(sp)
    3f74:	dc400017 	ldw	r17,0(sp)
    3f78:	dec00304 	addi	sp,sp,12
    3f7c:	f800283a 	ret

00003f80 <call___do_global_ctors_aux>:
    3f80:	deffff04 	addi	sp,sp,-4
    3f84:	dfc00015 	stw	ra,0(sp)
    3f88:	dfc00017 	ldw	ra,0(sp)
    3f8c:	dec00104 	addi	sp,sp,4
    3f90:	f800283a 	ret
Disassembly of section .fini:

00003f94 <_fini>:
    3f94:	defffe04 	addi	sp,sp,-8
    3f98:	dfc00015 	stw	ra,0(sp)
    3f9c:	df000115 	stw	fp,4(sp)
    3fa0:	00000740 	call	74 <__do_global_dtors_aux>
    3fa4:	dfc00017 	ldw	ra,0(sp)
    3fa8:	df000117 	ldw	fp,4(sp)
    3fac:	dec00204 	addi	sp,sp,8
    3fb0:	f800283a 	ret
