FROM nginx:alpine

RUN apk add --no-cache git python3 py3-pip && pip3 install Flask && git clone https://github.com/natachikhinashvili/forjenkins.git

WORKDIR /forjenkins

EXPOSE 5000

CMD python3 index.py