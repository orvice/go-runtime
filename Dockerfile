FROM golang:1.11 as builder

RUN github.com/google/gops

FROM orvice/go-runtime

COPY --from=builder /go/bin/gops /bin/gops