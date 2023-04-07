FROM golang:latest

# Set destination for COPY
WORKDIR /app

# Download Go modules
COPY . .

RUN go build -o math

CMD ["./math"]