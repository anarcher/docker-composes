FROM golang:1.6

RUN go get github.com/dgryski/carbonapi

ENTRYPOINT /go/bin/carbonapi 
