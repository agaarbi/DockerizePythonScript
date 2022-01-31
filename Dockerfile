# syntax = docker/dockerfile:1.2

FROM python:3

COPY . .

RUN pip install -r requirements.txt

# Simply running main.py
#CMD [ "python", "./main.py" ]

# Running Cron job

RUN apt-get update && apt-get -y install cron vim

RUN chmod 0644 /crontab

RUN /usr/bin/crontab /crontab

CMD ["cron", "-f"]
#ENTRYPOINT ["/entrypoint.sh"]