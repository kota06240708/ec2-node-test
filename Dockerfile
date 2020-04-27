FROM node:12.16.2-alpine

WORKDIR /app

RUN apk update && \
  npm install -g npm \
  && rm -rf /var/lib/apt/lists/*

CMD ["/bin/ash"]