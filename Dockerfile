FROM golang:alpine
RUN adduser -u 1000 -D jenkins && \
  wget -O - -q https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
  | ash -s v1.12.5 && \
  apk add --no-cache make git protobuf && \
  go get -u github.com/golang/protobuf/protoc-gen-go && \
  go get github.com/gogo/protobuf/proto && \
  go get github.com/gogo/protobuf/protoc-gen-gogoslick && \
  go get github.com/gogo/protobuf/gogoproto && \
  go get github.com/AsynkronIT/protoactor-go/... && \
  cd $GOPATH/src/github.com/AsynkronIT/protoactor-go && go get ./... && make && \
  mkdir /.cache && chmod -R 777 /.cache $GOPATH
