FROM python:2.7

MAINTAINER waynemetcalfe@gmail.com

RUN apt-get update && apt-get install -y cron
RUN pip install elasticsearch-curator

COPY crontab /etc/cron.d/es-curator-cron
RUN chmod 0644 /etc/cron.d/es-curator-cron

COPY config.yml /curator/
COPY action.yml /curator/

CMD cron -f
