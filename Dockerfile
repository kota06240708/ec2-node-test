FROM node:12.16.2-alpine

WORKDIR /app

RUN apk update && \
  npm install -g npm \
  && npm install --global @vue/cli @vue/cli-init \
  && rm -rf /var/lib/apt/lists/*

CMD ["/bin/ash"]