FROM alpine:3.17

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update
RUN apk add nodejs=18.16.0-r1 npm
RUN npm install -g @angular/cli@15.2.6
RUN npm install -g nodemon
RUN apk add git

EXPOSE 4200