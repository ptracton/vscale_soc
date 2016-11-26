CPU=RISCV

PREFIX = riscv32-unknown-elf

##
## Tools we use for building
##
CC	    = $(PREFIX)-gcc
LD	    = $(PREFIX)-gcc
ASM     = $(PREFIX)-as
OBJCOPY	= $(PREFIX)-objcopy
OBJDUMP	= $(PREFIX)-objdump
AR     	= $(PREFIX)-ar
GDB	    = $(PREFIX)-gdb
FLASH	= $(shell which st-flash)
MKDIR   = mkdir
RM      = rm

LD_FLAGS = -nostdlib -T../linker/riscv.ld

all:
	mkdir -p objects deps executables 
	$(CC) -c src/main.c -o objects/main.o -I includes
	$(LD) $(LD_FLAGS) objects/main.o -o executables/main.elf
	$(OBJDUMP) -DSltx  executables/main.elf > executables/main.lst
	$(OBJCOPY) -O srec  executables/main.elf >  executables/main.objcopy
	srec_cat executables/main.elf --output executables/main.mem --VMEM	
	
clean:
	rm -rf objects deps executables
	find . -name "*~" | xargs rm -f
