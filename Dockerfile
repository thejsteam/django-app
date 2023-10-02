FROM python:3.11.5-bookworm

COPY requirements.txt /requirements.txt
COPY entrypoint.sh /entrypoint.sh

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /requirements.txt
RUN chmod +x /entrypoint.sh

COPY ./app /app

WORKDIR /app



