FROM python:3.8-slim-buster

MAINTAINER Sophie Emmrich "sophie.emmrich@connect-data.de"

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY ./app /app

ENTRYPOINT [ "python" ]

CMD [ "main.py" ]