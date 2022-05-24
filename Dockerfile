FROM alpine:3 as builder

RUN apk add --update \
    git \
    make \
    bash

WORKDIR /src
RUN git clone https://github.com/sobolevn/git-secret.git git-secret \
  && cd git-secret && make build \
  && mkdir /dist \
  && PREFIX="/dist" make install


FROM alpine:3

RUN apk add --update \
    gpg \
    gpg-agent \
    git \
    && rm -rf /var/cache/apk/*

COPY --from=builder /dist/bin/git-secret /usr/bin

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
