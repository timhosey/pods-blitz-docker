FROM alpine:latest

RUN mkdir /app
RUN mkdir /config

COPY ./build/app/* /app
COPY ./build/config/* /config

RUN chmod +x /app/pods-blitz

ENTRYPOINT ["/app/pods-blitz"]
