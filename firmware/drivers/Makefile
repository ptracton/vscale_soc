include ../Makefile.riscv

##
## The directories to make for this build.
##
MAKE_DIRS += $(OBJ_DIR) $(LIB_DIR) $(DEP_DIR)


LIBRARY = libdrivers.a

##
## Project sources converted to objects
##
SOURCES          += $(wildcard $(SRC_DIR)/*.c)
OBJECTS          += $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SOURCES))
DEPS              = $(addprefix $(DEP_DIR),$(SOURCES:.c=.d))
CINCLUDES        += -I$(INC_DIR)
VPATH            += $(SRC_DIR)
ELF_REQUIREMENTS += $(OBJECTS) 
LDSCRIPT          =$(LD_DIR)/riscv.ld
TAG_FILES        += $(SRC_DIR)/*.c $(INC_DIR)/*.h

##
## Options passed to the C compiler
##
CFLAGS	+= -Os -g  $(CINCLUDES)

##
## The list of steps to build the image
##
BUILD_LIST += dirs tags $(LIBRARY) 


all: $(BUILD_LIST)


-include $(DEPS)

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
$(LIBRARY): $(OBJECTS)
	@echo "Making library $(LIBRARY)"
	@$(AR) rcs $(LIB_DIR)/$(LIBRARY) $(OBJECTS)
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

##
## Clean up files and directories
##
clean:
	@echo "Cleaning up"
	@find . -name "*~" | xargs $(RM) -f
	@find . -name "*.o" | xargs $(RM) -f
	@$(RM) -f TAGS	
	@$(RM) -rf $(OBJ_DIR)
	@$(RM) -rf $(LIB_DIR)
	@$(RM) -rf $(DEP_DIR)
