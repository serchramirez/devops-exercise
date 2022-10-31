FROM alpine:3.10

RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip \
    && mkdir /app

WORKDIR /app 

ADD requirement.txt /app 

ADD app.py /app

RUN pip3 --no-cache-dir install -r requirement.txt

CMD ["python3","/app/app.py"]
