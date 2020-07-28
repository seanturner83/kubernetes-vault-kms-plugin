FROM golang:1.14
RUN mkdir -p src/kubernetes-vault-kms-plugin
WORKDIR /go/src/kubernetes-vault-kms-plugin
ADD . .
WORKDIR /go/src/kubernetes-vault-kms-plugin/vault
RUN go get ./...
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build
