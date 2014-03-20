# Written by:
#     Evan Andersen
#
# Created April 3, 2013
#
# NOTE: You must be in a nios2 shell to run this makefile. It is suggested
# to use the script "build_kernel.sh" provided in the project root instead of
# using this makefile directly

# All of the kernel source files
OBJECTS = bootloader2.o sha2.o

# Compile flags.
CFLAGS = -std=gnu99 -I${PWD} -mhw-mul -mhw-div -O2 -ffunction-sections -fverbose-asm -fno-inline -DSYSTEM_BUS_WIDTH=32 -DALT_SINGLE_THREADED -DLTM_DESC -I ./libtomcrypt-1.17/src/headers/ -I ./libtommath-0.42.0/
 
LDFLAGS = -Wl,--script=boot2.ld -L. -ltomcrypt -ltommath

# ---------------------------------------------------------
# Targets to build
# ---------------------------------------------------------

#enter the nios2 shell, compile, and then leave
default:    
	$(MAKE) -j $(shell grep -c ^processor /proc/cpuinfo) kernel --no-print-directory

#build the kernel
kernel: $(OBJECTS)
	nios2-elf-gcc  $(OBJECTS) $(LDFLAGS) -Wl,--defsym -Wl,nasys_stack_top=0xc8000000 -o $@

# Compile a .c source file to a .o object file.
%.o: %.c
	nios2-elf-gcc -c $< $(CFLAGS) -o $@

# Compile a .s assembly file to a .o object file.
%.o: %.s
	nios2-elf-as $< -o $@

# Delete generated files.
clean:
	-rm -f $(OBJECTS) kernel
