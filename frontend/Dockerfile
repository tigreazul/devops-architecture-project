FROM node:16
# ARG PROJECT_NAME

ARG PROJECT_NAME=default-project-name
ENV PROJECT_NAME_ENV=${PROJECT_NAME}

WORKDIR /app

COPY package*.json ./

# RUN npm ci

RUN npm install -g @angular/cli@15.2.6

RUN ng new ${PROJECT_NAME_ENV}

WORKDIR /app/${PROJECT_NAME_ENV}

RUN npm install

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]