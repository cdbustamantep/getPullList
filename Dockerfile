FROM python:3.8-slim
WORKDIR /app
RUN apt-get update && \
    apt-get install -y cron && \
    rm -rf /var/lib/apt/lists/*
COPY . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
CMD ["python", "./sendpulls.py"]
