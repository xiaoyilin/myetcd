FROM alpine:latest


EXPOSE 2379 2380
CMD ["/usr/local/bin/etcd"]
