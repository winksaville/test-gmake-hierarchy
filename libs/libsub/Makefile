# The directory this Makefile is in
libs_libsub_DIR := \
	$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

libs_libsub_DEST_DIR := $(CURDIR)/out/libs/libsub/

libs_libsub_INCLUDE := $(libs_libsub_DIR)include
libs_libsub_LIB := $(libs_libsub_DEST_DIR)libsub.a

TARGET_FILES += $(libs_libsub_LIB)

$(libs_libsub_LIB): $(libs_libsub_DEST_DIR)src/sub.o
	@mkdir -p $(libs_libsub_DEST_DIR)
	@$(AR) -c -r $@ $^

$(libs_libsub_DEST_DIR)src/sub.o: $(libs_libsub_DIR)src/sub.c
	@mkdir -p $(libs_libsub_DEST_DIR)src
	@$(CC) -c -I$(libs_libsub_INCLUDE) -o $@ $<

CLEAN_FILES += $(libs_libsub_DEST_DIR)src/sub.o $(libs_libsub_LIB)
