FROM golang:1.16-alpine as build-stage
WORKDIR /usr/src/app
COPY . .
RUN CGO_ENABLED=0 go build && \
    adduser --disabled-password --gecos "" appuser

FROM scratch
COPY --from=build-stage /usr/src/app/server ./server
COPY --from=build-stage /etc/passwd /etc/passwd
USER appuser
EXPOSE 8080
CMD ["./server"]
