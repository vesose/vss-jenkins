FROM golang:alpine
RUN apk --no-cache add curl; \
  curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh \
  | ash -s -- -b $GOPATH/bin v1.12.3
