SHELL := /bin/bash

CUR_DIR = $(PWD)
OUT_DIR = $(CURDIR)/out

compile:
	find $(CUR_DIR) -type f -name "*.mjml" -print0 | while read -d $$'\0' file; do \
  		echo "Processing file $$file"; \
	done

clean:
	rm -rf "$(OUT_DIR)"
