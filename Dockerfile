FROM golang:1.15
WORKDIR /go/src/go-k8s
COPY . .
RUN GOOS=linux go build -ldflags="-s -w"
CMD ["./go-k8s"]