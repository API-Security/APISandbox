FROM golang:1.16-buster

WORKDIR $GOPATH/src
RUN mkdir owaspapitop10
COPY src $GOPATH/src/owaspapitop10
WORKDIR $GOPATH/src/owaspapitop10
ENV GOPROXY https://goproxy.io

RUN go mod tidy && go build .

EXPOSE 8080

ENTRYPOINT  ["./owaspapitop10"]
