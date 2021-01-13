FROM node:slim

RUN apt-get update && apt-get install -y zip
COPY package.json package-lock.json /opt/ratings/
WORKDIR /opt/ratings
RUN npm install
COPY ratings.js /opt/ratings/
RUN zip -r ./ratings.zip ./
