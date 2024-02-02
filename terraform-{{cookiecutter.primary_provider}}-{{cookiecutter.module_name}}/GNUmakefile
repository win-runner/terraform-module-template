# code: language=makefile insertSpaces=false tabSize=2
.DEFAULT_GOAL := help

SHELL         := bash
.SHELLFLAGS   := -eu -o pipefail -c
MAKEFLAGS     += --warn-undefined-variables
MAKEFLAGS     += --no-builtin-rules
REPO_ROOT 		:= $(shell git rev-parse --show-toplevel 2> /dev/null)

ifneq (,$(wildcard ./.env))
	include .env
	export
endif

VENV_NAME?=.venv
PYTHON          := ${VENV_NAME}/bin/python
PYTHON_VERSION? := 3.9

venv: $(VENV_NAME)/bin/activate

ifeq (, $(shell which python$(PYTHON_VERSION)))
	$(error "No python$(PYTHON_VERSION) in $(PATH)")
endif

$(VENV_NAME)/bin/activate: $(MAKEFILE_LIST)
	test -d $(VENV_NAME) || python$(PYTHON_VERSION) -m venv $(VENV_NAME)
	${PYTHON} -m pip install -U pip
	${PYTHON} -m pip install pre-commit
	# ensure venv is rebuild when requirements.txt changes
	touch $(VENV_NAME)/bin/activate

help: # this help screen
	@printf "Available targets:\n\n"
	@grep '^[^.#]\+:\s\+.*#' $(MAKEFILE_LIST) | \
	sed "s/\(.\+\):\s*\(.*\) #\s*\(.*\)/`printf "\033[93m"`\1`printf "\033[0m"`	\3 [\2]/" | \
	expand -t20 | \
	sort -u

build: fmt docs lint # build the current module

lint: # lint the current module
	tflint --config=$(REPO_ROOT)/.tflint.hcl

docs: # update the module documentation
	terraform-docs markdown . --config=$(REPO_ROOT)/.terraform-docs.yml

fmt: # format all HCL files
	terraform fmt -recursive $(REPO_ROOT)

fmt-test: # check the format of all HCL files
	terraform fmt -check -recursive $(REPO_ROOT)

test: fmt-test lint # run all tests

setup: venv # setup the repository for local development
	${VENV_NAME}/bin/pre-commit install

pre-commit: venv # run pre-commit
	${VENV_NAME}/bin/pre-commit run -a

.PHONY: build lint docs fmt test pre-commit help
