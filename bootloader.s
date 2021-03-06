# this is a bootloader that sits in the on-chip ROM on the DE2
# it reads in the OS from the SD card and then transferrs execution to it

# OUT OF DATE
# see the newer C implementation for the currently used code

.section .text
.global _start

_start:
    movia r2, 0x10000010        #green LEDS
    movia r3, 0x08001000        #SD card addr

    ori r4, r0, 0x8             #indicate waiting for an SD card
    stwio r4, 0(r2)


CARD_INSERT:                     #wait for an SD card to be inserted
    ldwio r4, 564(r3)
    andi r4, r4, 0x2
    beq r4, r0, CARD_INSERT

    ori r4, r0, 0x4              #indicate a detected SD card
    stwio r4, 0(r2) 

    ori r12, r0, 2                  
    call READ_BLOCK              #read LBA 2, which is the GPT partition array

    ldwio r12, 32(r3)            #load the starting LBA for the partition
    addi r12, r12, 2             #ext2 superblock starts 2 LBA from partition start
    call READ_BLOCK              #read the ext2 superblock



    andi r6, r5, 0x3             #size must be 4 byte aligned

    beq r6, r0, ALIGNED

NOT_ALIGNED:
    ori r6, r0, 0xF0
    stwio r6, 0(r2)
    br NOT_ALIGNED 

ALIGNED:
    ori r4, r0, 0x2              #indicate start of data copy
    stwio r4, 0(r2) 
    
    addi r6, r3, 4               #r6 is the current address to read from
    ori r7, r0, 508              #r7 is the number of bytes left in the block
    ori r8, r0, 0x1000           #r8 is the address of the target memory    

COPY:
    beq r5, r0, DONE

    bne r7, r0, CURR_BLOCK
    addi r12, r12, 1             # get the next block from the SD card
    call READ_BLOCK
    mov r6, r3
    ori r7, r0, 512

CURR_BLOCK:
    ldwio r9, 0(r6)
    stwio r9, 0(r8)

    subi r5, r5, 4              #less bytes to copy
    subi r7, r7, 4              #less bytes in the block
    addi r6, r6, 4              #increment the read address
    addi r8, r8, 4              #increment the destination address

    br COPY

DONE:
    ori r4, r0, 0x1             #indicate DONE copying
    stwio r4, 0(r2) 

    ori r8, r0, 0x1000
    jmp r8                      #jump to the freshly loaded code


#function to read a block from the SD Card
READ_BLOCK:
    mov r20, r12
    slli r20, r20, 9               #multiply block addr by 512 to get address
    stwio r20, 556(r3)            #send a command to the SD Card to read a block
    ori r20, r0, 0x11
    stwio r20, 560(r3)

READ_OP:                         #wait for the block to be read
    ldwio r20, 564(r3)
    andi r20, r20, 0x04
    bne r20, r0, READ_OP
    ret
