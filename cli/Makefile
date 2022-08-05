BIN_NAME=yammy

build:
	env GOOS=darwin  GOARCH=amd64 go build -o build/${BIN_NAME}-darwin-amd64
	env GOOS=darwin  GOARCH=arm64 go build -o build/${BIN_NAME}-darwin-arm64
	env GOOS=linux   GOARCH=amd64 go build -o build/${BIN_NAME}-linux-amd64
	env GOOS=linux   GOARCH=arm64 go build -o build/${BIN_NAME}-linux-arm64
	env GOOS=windows GOARCH=amd64 go build -o build/${BIN_NAME}-windows-amd64

clean:
	go clean
	rm -rf build/
