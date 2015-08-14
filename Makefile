# The directory this Makefile is in
root_DIR := \
	$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY: default
default: all

include $(root_DIR)libs/Makefile
include $(root_DIR)apps/Makefile

.PHONY: all
all: $(TARGET_FILES)

.PHONY: clean
clean:
	@rm -rf $(CLEAN_FILES)

