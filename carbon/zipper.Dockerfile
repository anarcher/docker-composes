FROM golang:1.6

RUN go get github.com/dgryski/carbonzipper

ENTRYPOINT /go/bin/carbonzipper

