# syntax = docker/dockerfile:1.2

FROM python:3

COPY . .

RUN pip install -r requirements.txt

# Simply running main.py
CMD [ "python", "./main.py" ]