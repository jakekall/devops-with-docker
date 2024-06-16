FROM docker

WORKDIR /usr/local/bin
COPY . .
RUN chmod a+x ./builder.sh

ENTRYPOINT ["./builder.sh"]
