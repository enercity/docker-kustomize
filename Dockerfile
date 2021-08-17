FROM alpine:3.12.0
MAINTAINER wiener.thomas@googlemail.com

RUN apk add --no-cache bash curl
RUN curl -s https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh -o /root/install_kustomize.sh \
    && /bin/bash /root/install_kustomize.sh \
    && mv kustomize /usr/local/bin/kustomize

COPY kustomize-lqt /usr/local/bin
