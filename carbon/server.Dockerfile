FROM golang:1.6

RUN go get github.com/grobian/carbonserver

ENTRYPOINT /go/bin/carbonserver 
