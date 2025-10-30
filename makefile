
.PHONY: build install

build:
	go build -o build/

install:
	cp build/aliasgo ~/.local/bin

