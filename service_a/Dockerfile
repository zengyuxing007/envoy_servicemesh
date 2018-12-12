FROM golang:1.10.3 AS golang

RUN export GOPATH=/go/
RUN export GOBIN=/go/bin/

COPY main.go /go/src/main.go
RUN export GOBIN=/go/bin/ && go install /go/src/main.go


FROM phusion/baseimage:0.10.2



COPY --from=golang /go/bin/main /usr/local/bin/
RUN apt update && apt install -y tcpflow curl net-tools iptables
RUN chmod +x /usr/local/bin/main

CMD ["/sbin/my_init","--","/usr/local/bin/main"]
