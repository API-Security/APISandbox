FROM golang:1.16-buster

WORKDIR $GOPATH/src
RUN mkdir 4asystem
COPY src $GOPATH/src/4asystem
WORKDIR $GOPATH/src/4asystem
ENV GOPROXY https://goproxy.io

RUN go mod tidy && go build .

EXPOSE 8080

ENTRYPOINT  ["./4asystem"]
