# The directory this Makefile is in
libs_libadd_DIR := \
	$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

libs_libadd_DEST_DIR := $(CURDIR)/out/libs/libadd/

libs_libadd_INCLUDE := $(libs_libadd_DIR)include
libs_libadd_LIB := $(libs_libadd_DEST_DIR)libadd.a

TARGET_FILES += $(libs_libadd_LIB)

$(libs_libadd_LIB): $(libs_libadd_DEST_DIR)src/add.o
	@mkdir -p $(libs_libadd_DEST_DIR)
	@$(AR) -c -r $@ $^

$(libs_libadd_DEST_DIR)src/add.o: $(libs_libadd_DIR)src/add.c
	@mkdir -p $(libs_libadd_DEST_DIR)src
	@$(CC) -c -I$(libs_libadd_INCLUDE) -o $@ $<

CLEAN_FILES += $(libs_libadd_DEST_DIR)src/add.o $(libs_libadd_LIB)
