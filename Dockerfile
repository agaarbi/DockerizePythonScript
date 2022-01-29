# syntax = docker/dockerfile:1.2

FROM python:3

COPY ./app /app

ADD requirements.txt /
RUN pip install -r requirements.txt
# RUN pip3 install wheel python-dotenv

CMD [ "python", "./app/main.py" ]