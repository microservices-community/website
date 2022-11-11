SHELL := /bin/bash
BUNDLE := cd web && bundle config set --local path 'vendor/bundle' && bundle
JEKYLL := $(BUNDLE) exec jekyll

.PHONY: cd all install update clean build serve push run-local

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
	$(JEKYLL) serve --base ""

run-local:
	docker build -f docker/Dockerfile-local -t mc_website .
	docker run -p 8080:8080 -it --rm mc_website