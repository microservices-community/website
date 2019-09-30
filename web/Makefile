SHELL := /bin/bash
BUNDLE := bundle
JEKYLL := $(BUNDLE) exec jekyll

.PHONY: all install update clean build serve

all : install build

install: 
	$(BUNDLE) install

update: 
	$(BUNDLE) update
	
clean: 
	$(JEKYLL) clean

build: 
	$(JEKYLL) build

serve:
	$(JEKYLL) serve