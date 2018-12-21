FROM golang:alpine
RUN wget -O - -q https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
  | ash -s v1.12.3
RUN mkdir /.cache && chmod 777 /.cache

