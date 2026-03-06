FROM python:3.12.3-slim-bookworm

ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get install -y lsb-release wget build-essential gettext

RUN echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update && apt-get install -y postgresql-client-18 && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt
WORKDIR /app
CMD ["python"]
