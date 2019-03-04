.DEFAULT_GOAL := build

build:
	go build
.PHONY: build

test:
	go test -v
.PHONY: test

lint:
	golangci-lint run
.PHONY: lint

pack:
	GOOS=darwin GOARCH=amd64 go build -ldflags '-w -s' -o hello
	tar cvzf hello-$(TRAVIS_TAG)-darwin-amd64.tgz hello
	GOOS=linux GOARCH=amd64 go build -ldflags '-w -s' -o hello
	tar cvzf hello-$(TRAVIS_TAG)-linux-amd64.tgz hello
	GOOS=windows GOARCH=amd64 go build -ldflags '-w -s' -o hello.exe
	tar cvzf hello-$(TRAVIS_TAG)-windows-amd64.tgz hello.exe
	sha256sum *.tgz > sha256sums.txt
.PHONY: pack
