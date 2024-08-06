test:
	@ go test ./...

build:
	@ go build -o bin/mashina cmd/mashina.go
	@ chmod +x bin/mashina

install:
	@ MASHINA_DEV=true bash install.sh

auto_test:
	@ fswatch -or . | xargs -n1 -I{} go test ./...
