FROM golang:1.16
EXPOSE 8080
WORKDIR /usr/src/app
COPY . .
RUN go build
RUN adduser --disabled-password --gecos "" appuser
USER appuser
CMD ["./server"]
