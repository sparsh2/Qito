set -exuo pipefail

test() {
    go fmt ./...
    go test -count=1 ./...
}

build() {
    python3 ./build.py
}

test
build
