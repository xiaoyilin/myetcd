FROM alpine:latest
MAINTAINER yilinxiao <406735078@qq.com>
RUN apk update && \
    apk add --no-cache curl && \
    curl -o etcd.tar.gz https://github.com/etcd-io/etcd/releases/download/v3.4.13/etcd-v3.4.13-linux-amd64.tar.gz && \
	  mkdir etcd && tar -zxvf etcd.tar.gz -C etcd && \
	  mv -t /usr/local/bin/  etcd/etcd etcd/etcdctl && \
    apk del curl  && \
    rm -rf /var/cache/apk/*
EXPOSE 2379 2380
CMD ["/usr/local/bin/etcd"]
