FROM node:lts-alpine3.19

RUN apk update && apk upgrade
RUN apk add vim nano curl wget git
RUN npm install -g npm@latest && npm install -g pnpm@latest
RUN echo -e "alias ls='ls --color=auto'\nalias ll='ls -lF'\nalias la='ls -AlF'\nalias l='ls -CF'\nalias h='history'\nalias c='clear'" > /root/.profile

WORKDIR /app

EXPOSE 5173
EXPOSE 8080
