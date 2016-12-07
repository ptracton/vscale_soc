include ../firmware/Makefile.riscv

TARGET = NONE
FIRMWARE_DIR = ../firmware/

##
## The files we are creating
##
ELF_FILE  = $(TARGET).elf
LIST_FILE = $(TARGET).lst
HEX_FILE  = $(TARGET).hex
SREC_FILE = $(TARGET).srec
BIN_FILE  = $(TARGET).bin
MEM_FILE  = $(TARGET).mem
##
## Project sources converted to objects
##
SOURCES          += $(TARGET).c
OBJECTS          += $(patsubst %.c,$(OBJ_DIR)/%.o,$(SOURCES))
DEPS              = $(addprefix $(DEP_DIR),$(SOURCES:.c=.d))
CINCLUDES        += -I$(INC_DIR) -I $(FIRMWARE_DIR)/drivers/includes
VPATH            += .
ELF_REQUIREMENTS += $(OBJECTS) 
LDSCRIPT          = $(FIRMWARE_DIR)/$(LD_DIR)/riscv.ld
TAG_FILES        += *.c $(FIRMWARE_DIR)/drivers/src/*.c $(FIRMWARE_DIR)/drivers/includes/*.h

##
## Options passed to the C compiler
##
CFLAGS	+= -Os -g  $(CINCLUDES)

##
## Flags for linking image together
##
LDFLAGS		+= -nostdlib -T$(LDSCRIPT) -L $(FIRMWARE_DIR)/drivers/library -ldrivers

##
## The directories to make for this build.
##
MAKE_DIRS += $(DEP_DIR) $(OBJ_DIR)


##
## The list of steps to build the image
##
BUILD_LIST += dirs tags $(ELF_FILE) $(LIST_FILE) $(MEM_FILE)


all: $(BUILD_LIST)

##
## Create the directories needed for this build
##
dirs:
	@echo "Making directories $(MAKE_DIRS)"
	@echo "$(BUILD_LIST)"
	@$(MKDIR) -p $(MAKE_DIRS)

##
## Link together the executable
##
$(ELF_FILE): $(ELF_REQUIREMENTS)
	@echo "Build Device Drivers"
	@$(MAKE) -C $(FIRMWARE_DIR)/drivers
	@echo "Linking $(ELF_FILE)"
	@$(LD) -o $(ELF_FILE) $(ELF_REQUIREMENTS) $(LDFLAGS)

$(LIST_FILE):$(ELF_FILE)
	@echo "Creating $(LIST_FILE)"
	@$(OBJDUMP) -S $(ELF_FILE) >  $(LIST_FILE)

$(MEM_FILE):$(ELF_FILE)
	@echo "Create Memory File for Verilog Simulation $(MEM_FILE)"
	@$(OBJCOPY) -O srec $< $@.tmp
	@srec_cat $@.tmp --output $(MEM_FILE) --VMEM
	@$(RM) -f $@.tmp
##
## Turn out C code into objects in our $(OBJ_DIR)
##
$(OBJ_DIR)/%.o:%.c
	@echo "Compiling  $<"
	@$(CC) $(CFLAGS) -o $@ -c $< -MMD -MF dep/$(*F).d

##
## Turn out ASM code into objects in our $(OBJ_DIR)
##
$(OBJ_DIR)/%.o:%.s
	@echo "Assembling $<"
	@$(ASM) $(ASMFLAGS)  -o $@ -c $< 

##
## Create TAGS file for our editor to find symbols in code
##
tags:
	@echo "Compile TAGS file"
	@etags $(TAG_FILES)

clean:
	$(RM) -rf $(OBJ_DIR) $(ELF_FILE) $(LIST_FILE) $(HEX_FILE) $(SREC_FILE) $(BIN_FILE)
	$(RM) -rf $(DEP_DIR) $(SREC_FILE) TAGS $(MEM_FILE)
	find . -name "*~" | xargs rm -f 
