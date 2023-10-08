#!/bin/bash

cd /root/issuer-node

export GOROOT=/usr/local/go
export GOPATH=/root/go
export PATH=/usr/local/go/bin:/go/bin:$PATH
export GOBIN=/usr/local/go/bin

# go version
make build-local
