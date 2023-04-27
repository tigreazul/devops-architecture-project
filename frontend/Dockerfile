FROM node:16

ARG PROJECT_NAME=default-project-name

WORKDIR /app

COPY package*.json ./

RUN npm install -g @angular/cli@15.2.6

RUN ng new ${PROJECT_NAME}

WORKDIR /app/${PROJECT_NAME}

RUN npm install

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]