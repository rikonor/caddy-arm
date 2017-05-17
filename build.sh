#!/bin/sh

# Copy over the Caddy repo
go get github.com/mholt/caddy

# Build Caddy for ARMv6
cd /go/src/github.com/mholt/caddy
go get ./...
cd caddy
GOOS=linux GOARCH=arm GOARM=6 go build

# Copy over the registry binary
cp caddy /src/caddy

