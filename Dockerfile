FROM node:lts-alpine

ARG BUILD_ENVIRONMENT
ENV BUILD_ENVIRONMENT=$BUILD_ENVIRONMENT

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY . /app

RUN if [ "$BUILD_ENVIRONMENT" = "prod" ]; then \
    npm install -g http-server; \
    npm run build; \
    fi

EXPOSE 5173

CMD ["npm", "run", "dev"]