FROM golang

WORKDIR /go/src


RUN apt-get update ; \
    apt-get install -y socat
RUN go get -u gopkg.in/alecthomas/kingpin.v2
RUN go get -u gopkg.in/noisesocket.v0
RUN cd gopkg.in/noisesocket.v0/spiffe/client && go build -o blog main.go

COPY run.sh gopkg.in/noisesocket.v0/spiffe/client
CMD nohup socat TCP-LISTEN:12888,fork,bind=127.0.0.1 TCP:database:12888
