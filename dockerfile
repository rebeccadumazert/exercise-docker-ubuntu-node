FROM ubuntu:latest

EXPOSE 3000

RUN apt-get update -y\
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_11.x | bash \
    && apt-get install nodejs -y

WORKDIR /var/app/

COPY ./app/index.js .

COPY ./app/package.json .

RUN npm install

CMD ["node", "index.js"]
