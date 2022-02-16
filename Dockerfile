FROM python:3.8-slim-buster

MAINTAINER Sophie Emmrich "sophie.emmrich@connect-data.de"

WORKDIR /app

COPY ./app /app

EXPOSE 5000

RUN pip3 install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]