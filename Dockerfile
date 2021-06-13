FROM node:14-alpine

RUN apk update && apk upgrade && \
    # i - instal, -g instalacja globalna
    npm i -g serve && \
    mkdir /opt/app

# kopiuje kod źródłowy z bieżącego katalogu
COPY . /opt/app

EXPOSE 5000
WORKDIR /opt/app
CMD serve -l 5000

