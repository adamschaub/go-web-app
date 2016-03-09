FROM golang

ADD ./src/github.com/adamschaub/web-app/server.go /go/src/github.com/adamschaub/web-app/server.go

ENV GOPATH /go/
ENV GOBIN /go/bin

RUN go install src/github.com/adamschaub/web-app/server.go

ENTRYPOINT /go/bin/server

EXPOSE 8080
