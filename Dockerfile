FROM node:17.1.0

WORKDIR /app/medusa

COPY package.json .
COPY develop.sh .
COPY package-lock.json .

RUN apt-get update

RUN apt-get install -y python

RUN npm install -g npm@latest

RUN npm install -g @medusajs/medusa-cli@latest

# Adding this here because I'm getting `babel is not defined` errors
RUN npm install -g babel-cli

RUN npm install

ENTRYPOINT ["./develop.sh"]