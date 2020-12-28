FROM alpine

ARG NODEJS_VERSION=12.15.0-r1

RUN set -x && \
    apk add --no-cache nodejs nodejs-npm && \
    npm install -g bash-language-server && \
    npm cache clean --force && \
    apk del nodejs-npm

ENTRYPOINT ["bash-language-server"]
CMD ["start"]
