FROM python:3.7-alpine

RUN  apk add --update --progress \
        musl \
        build-base \
        bash \
        git

#ENV PYTHON_PIP_VERSION 8.1.0
RUN pip install -q --no-cache-dir --upgrade pip

RUN apk add libffi-dev
RUN apk add openssl-dev
RUN pip install twisted
RUN pip install certifi
RUN pip install pyOpenSSL
RUN pip install service_identity
RUN pip install idna

RUN mkdir /app/syncplay -p
RUN git clone https://github.com/Syncplay/syncplay -b v1.6.4a /app/syncplay

EXPOSE 8999
COPY ./entrypoint.sh /entrypoint.sh
WORKDIR /app/syncplay
ENTRYPOINT ["/entrypoint.sh"]
