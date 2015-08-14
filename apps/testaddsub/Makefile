apps_testaddsub_DIR := \
	$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

apps_testaddsub_DEST_DIR := $(CURDIR)/out/apps/testaddsub/

TARGET_FILES += $(apps_testaddsub_DEST_DIR)testaddsub

INCLUDES := \
    -I$(libs_libadd_INCLUDE) \
    -I$(libs_libsub_INCLUDE)

$(apps_testaddsub_DEST_DIR)testaddsub: \
    $(apps_testaddsub_DEST_DIR)src/main.o \
    $(libs_libadd_LIB) \
    $(libs_libsub_LIB)
	@mkdir -p $(apps_testaddsub_DEST_DIR)
	@$(CC) -o $@ $^

$(apps_testaddsub_DEST_DIR)src/main.o: $(apps_testaddsub_DIR)src/main.c
	@mkdir -p $(apps_testaddsub_DEST_DIR)src
	@$(CC) -c $(INCLUDES) -o $@ $<

CLEAN_FILES += $(apps_testaddsub_DEST_DIR)src/main.o $(apps_testaddsub_DEST_DIR)testaddsub
