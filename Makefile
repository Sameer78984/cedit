CC := gcc

CFLAGS := -Wall -Wextra -pedantic -std=c99 -O2 -Iinclude
DEBUG_FLAGS := -O0 -g -DDEBUG -Iinclude

# -------------------------
# Directories
# -------------------------
SRC_DIR := src

BUILD_DIR := build
OBJ_DIR := $(BUILD_DIR)/obj
BIN_DIR := $(BUILD_DIR)/bin
ASM_DIR := $(BUILD_DIR)/asm
REPORT_DIR := $(BUILD_DIR)/report
DEP_DIR := $(BUILD_DIR)/dep

TARGET := cedit
BIN := $(BIN_DIR)/$(TARGET)

# -------------------------
# Sources
# -------------------------
SRCS := $(wildcard $(SRC_DIR)/*.c)
OBJS := $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))
DEPS := $(patsubst $(SRC_DIR)/%.c,$(DEP_DIR)/%.d,$(SRCS))

# -------------------------
# Default
# -------------------------
all: release

# -------------------------
# Create directories
# -------------------------
dirs:
	mkdir -p $(OBJ_DIR) $(BIN_DIR) $(ASM_DIR) $(REPORT_DIR) $(DEP_DIR)

# -------------------------
# BUILD (release)
# -------------------------
release: dirs $(BIN)

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | dirs
	$(CC) $(CFLAGS) -MMD -MP -c $< -o $@
	$(CC) -S $(CFLAGS) $< -o $(ASM_DIR)/$*.s

-include $(DEPS)

# -------------------------
# RUN SYSTEM
# -------------------------
run: release
	@./$(BIN)

run-file: release
	@./$(BIN) $(ARGS)

dev: release
	@clear
	@./$(BIN)

# -------------------------
# DEBUG BUILD
# -------------------------
debug: clean
	$(MAKE) CFLAGS="$(DEBUG_FLAGS)" release

# -------------------------
# ASM REPORTS
# -------------------------
asm: release
	objdump -d $(BIN) > $(REPORT_DIR)/cedit_disassembly.asm
	objdump -S $(BIN) > $(REPORT_DIR)/cedit_source_mix.asm

# -------------------------
# CLEAN
# -------------------------
clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean run run-file dev debug release asm dirs