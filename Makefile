
default:
	@echo ""
	@echo "Available Targets:"
	@echo ""
	@echo "   make install"
	@echo "   make dev"
	@echo "   make test"
	@echo "   make clean"
	@echo ""

install: clean node_modules jspm_packages

node_modules:
	npm install

jspm_packages:
	$(jspm) install

test:
	$(karma) start

clean:
	rm -rf node_modules jspm_packages

jspm  = ./node_modules/.bin/jspm
karma = ./node_modules/.bin/karma

.PHONY: install test clean node_modules jspm_packages;
MAKEFLAGS = -s
