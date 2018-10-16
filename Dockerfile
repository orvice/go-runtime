FROM golang:1.11-alpine as builder

RUN  apk add --no-cache git
RUN go get github.com/google/gops

FROM orvice/go-runtime:base

COPY --from=builder /go/bin/gops /usr/bin/gops
