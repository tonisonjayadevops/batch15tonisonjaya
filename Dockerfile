FROM golang:1.20-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /batch15-tonisonjaya

EXPOSE 3000

CMD ["/batch15-tonisonjaya"]
