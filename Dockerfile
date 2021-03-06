FROM golang:1.13.7-alpine as builder
LABEL MAINTAINER="hnlq715@qq.com"

ADD . /app
ARG cmd=server
RUN cd /app/cmd/${cmd} && go build -mod=vendor

FROM alpine:latest

WORKDIR /app
COPY --from=builder /app/cmd/${cmd}/${cmd} /app

CMD [ "/app/${cmd}" ]