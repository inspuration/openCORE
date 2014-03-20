// Written by:
//     Evan Andersen & Liam Burns
//

#include <stdint.h>
#include <string.h>
#include "sha2.h"
#include  "tomcrypt.h"

//gcc -Os -I ./libtomcrypt-1.17/src/headers/ -I ./libtommath-0.42.0/ -L. test.c -ltomcrypt -ltommath -DLTM_DESC -o test


const unsigned pub_size = 294;
const unsigned char openssl_public_rsa[] =
{
  0x30, 0x82, 0x01, 0x22, 0x30, 0x0d, 0x06, 0x09, 0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x01,
  0x01, 0x05, 0x00, 0x03, 0x82, 0x01, 0x0f, 0x00, 0x30, 0x82, 0x01, 0x0a, 0x02, 0x82, 0x01, 0x01,
  0x00, 0xd1, 0x97, 0xaf, 0x8a, 0xed, 0x84, 0x10, 0x3f, 0xc0, 0xc8, 0x66, 0x05, 0xb7, 0xb9, 0x15,
  0x35, 0xf7, 0xda, 0x70, 0xc9, 0x6b, 0xc5, 0x3a, 0x6a, 0x95, 0xdd, 0xa8, 0x1a, 0x1d, 0x4a, 0x09,
  0x47, 0xa8, 0x1c, 0x72, 0x14, 0x12, 0xe0, 0xbb, 0xc9, 0x3b, 0xa4, 0xbc, 0x3c, 0x41, 0x30, 0x16,
  0x30, 0xf5, 0x94, 0x1e, 0x7f, 0xa6, 0x8e, 0xf1, 0x86, 0x65, 0xd7, 0x31, 0x9d, 0xcc, 0x81, 0x08,
  0x35, 0x65, 0x9f, 0xde, 0x75, 0x34, 0x60, 0xdb, 0xbc, 0xf6, 0x87, 0x3b, 0xb8, 0x49, 0x40, 0x01,
  0x3b, 0x26, 0xa0, 0x39, 0xf8, 0x18, 0xbd, 0x40, 0xdb, 0x4a, 0x90, 0x92, 0xdf, 0x81, 0x9b, 0x0a,
  0xa3, 0xf6, 0x60, 0x1a, 0x76, 0xdc, 0xfb, 0x64, 0x24, 0xec, 0x0b, 0xe5, 0xa9, 0xa1, 0x24, 0xa6,
  0x0a, 0x07, 0x5a, 0x33, 0xd9, 0x11, 0x17, 0x5e, 0xb4, 0xcb, 0x33, 0x87, 0x80, 0x37, 0x82, 0x05,
  0x76, 0x7f, 0x82, 0xd5, 0x5f, 0x54, 0x0b, 0xfb, 0x76, 0x19, 0xa9, 0x18, 0x32, 0xb0, 0xc5, 0xc9,
  0xd7, 0x01, 0xb8, 0x2d, 0x00, 0x18, 0xa0, 0x96, 0xbe, 0x3e, 0xa4, 0x60, 0xb7, 0x07, 0xf3, 0xaf,
  0x76, 0x1b, 0xfb, 0x05, 0xe4, 0x93, 0xdf, 0xcf, 0xe9, 0xb8, 0x60, 0xe5, 0x2e, 0x3b, 0x01, 0x1f,
  0x81, 0xe8, 0xed, 0xb1, 0x3d, 0xc6, 0x50, 0xf6, 0x6e, 0x46, 0xd7, 0x47, 0x71, 0x67, 0xb5, 0xab,
  0xdc, 0xfc, 0xfa, 0x07, 0xc7, 0x41, 0x02, 0x83, 0x38, 0xa5, 0x08, 0x3b, 0xe3, 0x88, 0x07, 0x86,
  0x69, 0xf4, 0x10, 0xbb, 0xf1, 0x6a, 0x6e, 0x8e, 0x2d, 0xd3, 0x10, 0x64, 0x3e, 0x29, 0xd2, 0xd3,
  0x78, 0x6b, 0x5e, 0x13, 0x6c, 0x76, 0xe5, 0x4c, 0x4c, 0x4d, 0x34, 0x82, 0x50, 0xa0, 0xa6, 0x70,
  0xae, 0x45, 0x21, 0x6c, 0x8d, 0x6f, 0x24, 0x2c, 0x45, 0x5d, 0x4e, 0x80, 0x26, 0x06, 0x63, 0x54,
  0x09, 0x02, 0x03, 0x01, 0x00, 0x01
};
/*** openssl public RSA key in DER format 
static const unsigned char openssl_public_rsa[] = {
   0x30, 0x81, 0x9f, 0x30, 0x0d, 0x06, 0x09, 0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x01, 0x01,
   0x05, 0x00, 0x03, 0x81, 0x8d, 0x00, 0x30, 0x81, 0x89, 0x02, 0x81, 0x81, 0x00, 0xcf, 0x9a, 0xde,
   0x64, 0x8a, 0xda, 0xc8, 0x33, 0x20, 0xa9, 0xd7, 0x83, 0x31, 0x19, 0x54, 0xb2, 0x9a, 0x85, 0xa7,
   0xa1, 0xb7, 0x75, 0x33, 0xb6, 0xa9, 0xac, 0x84, 0x24, 0xb3, 0xde, 0xdb, 0x7d, 0x85, 0x2d, 0x96,
   0x65, 0xe5, 0x3f, 0x72, 0x95, 0x24, 0x9f, 0x28, 0x68, 0xca, 0x4f, 0xdb, 0x44, 0x1c, 0x3e, 0x60,
   0x12, 0x8a, 0xdd, 0x26, 0xa5, 0xeb, 0xff, 0x0b, 0x5e, 0xd4, 0x88, 0x38, 0x49, 0x2a, 0x6e, 0x5b,
   0xbf, 0x12, 0x37, 0x47, 0xbd, 0x05, 0x6b, 0xbc, 0xdb, 0xf3, 0xee, 0xe4, 0x11, 0x8e, 0x41, 0x68,
   0x7c, 0x61, 0x13, 0xd7, 0x42, 0xc8, 0x80, 0xbe, 0x36, 0x8f, 0xdc, 0x08, 0x8b, 0x4f, 0xac, 0xa4,
   0xe2, 0x76, 0x0c, 0xc9, 0x63, 0x6c, 0x49, 0x58, 0x93, 0xed, 0xcc, 0xaa, 0xdc, 0x25, 0x3b, 0x0a,
   0x60, 0x3f, 0x8b, 0x54, 0x3a, 0xc3, 0x4d, 0x31, 0xe7, 0x94, 0xa4, 0x44, 0xfd, 0x02, 0x03, 0x01,
   0x00, 0x01,  };
*/

#define kRedLEDAddr ((char*)0xF0000000)
#define kGreenLEDAddr ((char*)0xF0000010)
#define kSDCardAddr ((char*)0xE8004000)

#define blockAddr(x) (baseAddr + blockSize*(x))


struct superblock
{
    uint32_t n_inode;
    uint32_t n_block;
    uint32_t n_resv_block;
    uint32_t n_free_block;
    uint32_t n_free_inode;
    uint32_t i_super;
    uint32_t s_block;
    uint32_t s_frag;
    uint32_t n_block_per_group;
    uint32_t n_frag_per_group;
    uint32_t n_inode_per_group;
    int32_t t_last_mount;
    int32_t t_last_modified;
    uint16_t n_mounted;
    uint16_t n_max_mount;
    uint16_t e_signature;
    uint16_t e_state;    
    uint16_t e_error_mode;
    uint16_t v_minor;
    int32_t t_last_check;
    int32_t t_max_check_period;
    uint32_t e_os_id;
    uint32_t v_major;
    uint16_t e_user_id;
    uint16_t e_group_id;
};

struct extended_superblock
{
    uint32_t i_non_resv_inode;
    uint16_t s_inode;
    uint16_t i_block_grp;
    uint32_t f_optional_feature;
    uint32_t f_required_feature;
    uint32_t f_readonly_feature;
    uint8_t  id[16];
    char name[16];
    char lastMounted[64];
    uint32_t f_compression_algo;
    uint8_t n_prealloc_file;
    uint8_t n_prealloc_dir;
    uint16_t padding;
    uint8_t journal_id[16];
    uint32_t journal_inode;
    uint32_t journal_device;
    uint32_t orphan_inode_list;
};

struct block_group_descriptor
{
    uint32_t a_block_usage;
    uint32_t a_inode_usage;
    uint32_t a_inode_table;
    uint16_t n_free_block;
    uint16_t n_free_inode;
    uint16_t n_dir;
    char padding[14];
};

struct inode
{
    uint16_t type;
    uint16_t userID;
    uint32_t sizel;
    int32_t  t_accessed;
    int32_t  t_creation;
    int32_t  t_modified;
    int32_t  t_deletion;
    uint16_t groupID;
    uint16_t n_link;
    uint32_t n_sector;
    uint32_t flags;
    uint32_t os_value;
    uint32_t direct[12];
    uint32_t indirect_one;
    uint32_t indirect_two;
    uint32_t indirect_three;
    uint32_t n_generation;
    uint32_t acl;
    uint32_t sizeh;
    uint32_t frag_addr;
    uint8_t  os_value_2[12];
};

struct directory
{
    uint32_t inode;
    uint16_t dir_len;
    uint8_t name_len;
    uint8_t type;
    char name[0];
};

struct inodeIteratorContext
{
    uint32_t pos;
    uint32_t numLeft;
    uint32_t totalCount;
    uint32_t data[128]; // 1024 % (length of data array) MUST == 0
};

// ELF file details
#define EI_NIDENT 16
struct elf_header 
{ 
    uint8_t indent[EI_NIDENT];
    uint16_t type;
    uint16_t machine;
    uint32_t version;
    uint32_t entry;
    uint32_t phoff;
    uint32_t shoff;
    uint32_t flags;
    uint16_t ehsize;
    uint16_t phentsize;
    uint16_t phnum;
    uint16_t shentsize;
    uint16_t shnum;
    uint16_t shstrndx;
}; 

struct elf_section
{
    uint32_t name;
    uint32_t type;
    uint32_t flags;
    uint32_t addr;
    uint32_t offset;
    uint32_t size;
    uint32_t link;
    uint32_t info;
    uint32_t addralign;
    uint32_t entsize;
};


struct superblock spb;
struct extended_superblock espb;
void* baseAddr;
uint32_t inode_size;
uint32_t blockSize;

//indicate failure to the user
void fail(uint8_t code)
{
    __builtin_stwio(kGreenLEDAddr, code << 4);                //light only the upper 4 LEDs
    while(1);
}

//no cache memcpy
void no_cache_cpy(void* dest, void* source, size_t len)
{
    uint8_t* dst1 = dest;
    uint8_t* src = source;
    uint8_t amount = (uint32_t)src % 4;
    len -= amount;
    switch (amount)
    {
        case 1: *dst1++ = __builtin_ldbio(src++); len--;
        case 2: *dst1++ = __builtin_ldbio(src++); len--;
        case 3: *dst1++ = __builtin_ldbio(src++); len--;
    }
    uint32_t* dst = (uint32_t*)dst1;
    while(len >= 4)
    {
        *dst++ = __builtin_ldwio(src);
        src += sizeof(void*);
        len -= sizeof(void*);
    }
    dst1 = (uint8_t*)dst;
    switch (len)
    {
        case 3: *dst1++ = __builtin_ldbio(src++);
        case 2: *dst1++ = __builtin_ldbio(src++);
        case 1: *dst1++ = __builtin_ldbio(src++);
    }
}

void readSector(unsigned int block)
{
    do
    {
        __builtin_stwio(kSDCardAddr + 556, block * 512);    //change the block address into an offset
        __builtin_stwio(kSDCardAddr + 560, 0x11);           //0x11 is SD card opcode for read

        while(__builtin_ldwio(kSDCardAddr + 564) & 4);      //wait for the operation to complete
    } while(__builtin_ldwio(kSDCardAddr + 564) & 0x10);     //restart it if it faileh

}

void readAddr(const void* addr, void* output, size_t len)
{
    while(len)
    {
        uint32_t offset = ((uint32_t)addr & 0x1FF);
        uint32_t amountLeft = 512 - offset;
        uint32_t tocopy = amountLeft > len ? len : amountLeft;
        readSector((uint32_t)addr >> 9);
        no_cache_cpy(output, kSDCardAddr + offset, tocopy);
        output += tocopy;
        addr += tocopy;
        len -= tocopy;
    }
}


uint32_t unsign_div_ceil(uint32_t dividend, uint32_t divisor)
{
    return dividend/divisor + !!(dividend % divisor);
}

//return the number of blocks copied int the buffer
uint32_t blocksAtInodeIndex(const struct inode* inode, uint32_t index, uint32_t* buf, uint32_t buflen)
{
    //total number of blocks
    uint64_t filesize = (uint64_t)inode->sizeh << 32 | inode->sizel;

    //num blocks = ceil(filesize/blockSize)
    uint32_t numBlocks = filesize/blockSize + !!(filesize % blockSize);
    buflen = (buflen + index) > numBlocks ? numBlocks - index : buflen;

    uint32_t blocksPerBlock = blockSize/sizeof(uint32_t);

    uint32_t toCopy;
    uint32_t left;
    
    //direct blocks
    if(index < 12)
    {
        left = 12 - index;
        toCopy = left > buflen ? buflen : left;
        memcpy(buf, inode->direct + index, sizeof(uint32_t)*toCopy);
    }

    //single indirection
    else if(index -= 12, left = blocksPerBlock - index, toCopy = left > buflen ? buflen : left, index < blocksPerBlock)
    {
        uint32_t* addr = blockAddr(inode->indirect_one) + index*sizeof(uint32_t);
        readAddr(addr, buf, sizeof(uint32_t)*toCopy);
    }
    
    //double indirection
    else if(index -= blocksPerBlock, index < blocksPerBlock*blocksPerBlock)
    {
        uint32_t* addr = (uint32_t*)blockAddr(inode->indirect_two);
        addr += index/blocksPerBlock;
        uint32_t newBlock;
        readAddr(addr, &newBlock, sizeof(uint32_t));
        addr = (uint32_t*)blockAddr(newBlock) + (index % blocksPerBlock)*sizeof(uint32_t);
        readAddr(addr, buf, sizeof(uint32_t*)*toCopy);
    }

    //triply indirect
    else if(index -= blocksPerBlock*blocksPerBlock, index < blocksPerBlock*blocksPerBlock*blocksPerBlock)
    {
        uint32_t* addr = (uint32_t*)blockAddr(inode->indirect_three);
        addr += index/blocksPerBlock*blocksPerBlock;
        uint32_t nextBlock;
        readAddr(addr, &nextBlock, sizeof(uint32_t));
        addr = (uint32_t*)blockAddr(nextBlock);
        addr += index/blocksPerBlock;
        readAddr(addr, &nextBlock, sizeof(uint32_t));
        addr = (uint32_t*)blockAddr(nextBlock) + (index % blocksPerBlock)*sizeof(uint32_t);
        readAddr(addr, buf, sizeof(uint32_t*)*toCopy);
    }

    return toCopy;
}

int iterateNode(const struct inode* inode, struct inodeIteratorContext* ctx, uint32_t* next)
{
    if(!ctx->numLeft)
    {
        ctx->numLeft = blocksAtInodeIndex(inode, ctx->totalCount, ctx->data, sizeof(ctx->data)/sizeof(ctx->data[0]));
        if(ctx->numLeft == 0)
        {
            return -1;
        }
    }

    //read the next block
    ctx->numLeft--;
    ctx->totalCount++;
    *next = ctx->data[ctx->pos++];

    return 0;    
}

uint32_t scanBlock(uint32_t block_num, const char* filename)
{
    char* addr = blockAddr(block_num);
    uint32_t len = blockSize;
    uint32_t count = 0;
    while(len)
    {
        struct directory dir;
        readAddr(addr, &dir, sizeof(dir));
        
        char name[256];
        readAddr(addr + sizeof(struct directory), name, dir.name_len);
        name[dir.name_len] = 0;
        if(!strcmp(name, filename))
        {
            return dir.inode;
        }
        addr += dir.dir_len;
        len -= dir.dir_len;
        count++;
    }

    return 0;
}

//finds the address of an inode
void readInode(uint32_t inode, struct inode* toRead)
{
    char* blk_grp = blockAddr(spb.i_super + 1) + sizeof(struct block_group_descriptor)*((inode - 1)/spb.n_inode_per_group);
    struct block_group_descriptor blk_grp_descrip;

    readAddr(blk_grp, &blk_grp_descrip, sizeof(blk_grp_descrip));

    //load the root inode table
    char* addr = blockAddr(blk_grp_descrip.a_inode_table) + inode_size*((inode - 1) % spb.n_inode_per_group);
    readAddr(addr, toRead, sizeof(*toRead));
}


void readFileOffset(const struct inode* file, void* dest, size_t len, size_t offset)
{
    char* dst = dest;
    while(len)
    {
        uint32_t left = blockSize - (offset % blockSize);
        uint32_t toCopy = left > len ? len : left;
        uint32_t block;
        blocksAtInodeIndex(file, offset/blockSize, &block, 1);
        char* addr = blockAddr(block) + (offset % blockSize);
        readAddr(addr, dst, toCopy);
        len -= toCopy;
        dst += toCopy;
        offset += toCopy;
    }
}



int main()
{
    	
    __builtin_stwio(kRedLEDAddr, 0xFF);                    //indicate boot2 has started
    __builtin_stwio(kGreenLEDAddr, 0x8);                    //indicate waiting for SD card
    while(!(__builtin_ldwio(kSDCardAddr + 564) & 0x2));     //wait for SD card
    
    __builtin_stwio(kGreenLEDAddr, 0x4);                    //indicate SD Card detected

    readSector(1);                                           //read the GPT header block
    readSector(__builtin_ldwio(kSDCardAddr + 72));           //GPT - byte 72 is the starting LBA of the partition list
    baseAddr = (void*)(__builtin_ldwio(kSDCardAddr + 32) * 512);
    
    readAddr(baseAddr + 1024, &spb, sizeof(spb));           //ext2 superblock is always 1024 bytes from the start of the partition
    blockSize = 1024 << spb.s_block;

    //check for ext2 magic code and that the filesystem is currently clean
    if(spb.e_signature != 0xEF53 || spb.e_state != 1)
    {
        fail(1);
    }

    //another consistency check
    uint32_t n_block_group = unsign_div_ceil(spb.n_block, spb.n_block_per_group);
    if(n_block_group != unsign_div_ceil(spb.n_inode, spb.n_inode_per_group))
    {
        fail(2);
    }
    
    //load the extended attributes if nesescary
    if(spb.v_major >= 1)
    {
        readAddr(baseAddr + 1024 + sizeof(spb), &espb, sizeof(espb));
        inode_size = espb.s_inode;
    }
    else
    {
        inode_size = 128;
    }

    //load the root inode (defined to be inode 2)
    struct inode root;
    readInode(2, &root);

    //locate the kernel file
    uint32_t kernel_inode = 0;
    struct inodeIteratorContext rootIt;
    memset(&rootIt, 0, sizeof(rootIt));
    uint32_t nextBlock = 0;
    while((iterateNode(&root, &rootIt, &nextBlock) == 0) && !kernel_inode)
    {
        if(nextBlock)
        {
            kernel_inode = scanBlock(nextBlock, "boot2");
        }
    }
    if(!kernel_inode)
    {
        fail(3);
    }

    //read in the kernel's inode
    readInode(2, &root);
    struct inode kernel;
    readInode(kernel_inode, &kernel);
    memset(&rootIt, 0, sizeof(rootIt));

    //locate the sig file
    uint32_t sig_inode = 0;
    nextBlock = 0;
    while((iterateNode(&root, &rootIt, &nextBlock) == 0) && !sig_inode)
    {
        if(nextBlock)
        {
            sig_inode = scanBlock(nextBlock, "kernel.sig");
        }
    }
    if(!sig_inode)
    {
        fail(3);
    }

    //read in the kernel's inode
    struct inode sig;
    readInode(sig_inode, &sig);

    //hash the file
    SHA256_CTX	ctx256;
    SHA256_Init(&ctx256);

    unsigned char	buf[1024];
    int offset=0;
    int l=0;
    
    while (offset < (kernel.sizel | kernel.sizeh) ) {
	readFileOffset(&kernel, buf, 1024, offset);
	offset += 1024;
	SHA256_Update(&ctx256, (unsigned char*)buf, 1024);
    }
    SHA256_End(&ctx256, buf);
    __builtin_stwio(kGreenLEDAddr, 0x3);                //indicate start of copying

    	unsigned char sigbuf[1024];
	int read=0;
	readFileOffset(&sig, sigbuf, 1024 , read);
	ltc_mp = ltm_desc;
	rsa_key priv_key, pub_key;
	int hash_idx, prng_idx;
	int ret = rsa_import(openssl_public_rsa, sizeof(openssl_public_rsa), &pub_key);
	if(ret!=CRYPT_OK) __builtin_stwio(kRedLEDAddr, 10);
	if (register_hash(&sha256_desc) == -1) {
		printf("Error registering SHA256\n");
		fail(4);
	}

	hash_idx = find_hash("sha256");
	register_prng(&sprng_desc);
	prng_idx = find_prng("sprng");
	prng_state prng;
	int err;
	if ((err = yarrow_start(&prng)) != CRYPT_OK) {
		printf("Start error: %s\n", error_to_string(err));
		fail(2);
	}
	/* add entropy */
	if ((err = yarrow_add_entropy("hello world", 11, &prng))
	!= CRYPT_OK) {
		printf("Add_entropy error: %s\n", error_to_string(err));
		fail(1);
	}
	int stat;
	if((err = rsa_verify_hash_ex(sigbuf, 0x100, buf, strlen(buf),LTC_LTC_PKCS_1_V1_5, hash_idx, 0, &stat, &pub_key))!=CRYPT_OK) {
		__builtin_stwio(kRedLEDAddr, err);
		fail( err);
	}	
	printf("status is : %d\n", ret);
    //then read in the ELF header
    struct elf_header hdr;
    readFileOffset(&kernel, &hdr, sizeof(hdr), 0);

    //check for ELF file signature and little endian encoding
    if(*((uint32_t*)hdr.indent) != 0x464c457f || hdr.indent[5] != 1)
    {
        fail(4);
    }   

    char* addr = (char*)hdr.shoff;

    uint32_t i;
    //check each ELF section and copy it in if the ALLOC flag is set
    for(i = 0; i < hdr.shnum; i++)
    {
        struct elf_section sect;
        readFileOffset(&kernel, &sect, sizeof(sect), (size_t)addr);

        if(sect.flags & 0x2)
        {
            if(sect.type == 8)
            {
                //it's a section that just needs to be set to 0
                memset((char*)sect.addr, 0, sect.size);
            }
            else
            {
                 //copy the bytes into memory
                readFileOffset(&kernel, (char*)sect.addr, sect.size, sect.offset); 
            }
        }

        addr += hdr.shentsize;
    }
    
    __builtin_stwio(kGreenLEDAddr, 0x1);                //indicate done copying    


    
    __asm__ ("mov r6, %0\n"                             //load the jump target from the ELF into r6
            "mov r4, r0\n"
            "ori r5, r0, 4096\n"                        //flush the data cache
            "dcache_init_loop:\n"
            "flushda 0(r4)\n"
            "addi r4, r4, 32\n"
            "bltu r4, r5, dcache_init_loop\n"           //clear the instruction cache
            "mov r4, r0\n"
            "ori r5, r0, 4096\n"
            "icache_init_loop:\n"
            "initi r4\n"
            "addi r4, r4, 4\n"
            "bltu r4, r5, icache_init_loop\n"
            "flushp\n"                                  //flush the pipeline and jump
            "jmp r6\n"
            : :"r" (hdr.entry) : "r4", "r5", "r6");

}
