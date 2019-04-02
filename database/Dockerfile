FROM golang

WORKDIR /go/src
RUN go get -u gopkg.in/alecthomas/kingpin.v2
RUN go get -u gopkg.in/noisesocket.v0
RUN cd gopkg.in/noisesocket.v0/spiffe/server/ && go build -o database main.go

COPY run.sh gopkg.in/noisesocket.v0/spiffe/server/
