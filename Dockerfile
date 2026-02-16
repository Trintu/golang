FROM golang:alpine

WORKDIR D:\Projects\golang

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o golang

CMD "[./golang]"