FROM python:3.12.3-slim-bookworm

ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get install -y lsb-release wget build-essential gettext

COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt
WORKDIR /app
CMD ["python"]
