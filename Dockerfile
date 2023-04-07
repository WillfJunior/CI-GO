FROM golang:latest

# Set destination for COPY
WORKDIR /app

RUN go mod init fc-ci

# Download Go modules
COPY . .

RUN go build -o math

CMD ["./math"]