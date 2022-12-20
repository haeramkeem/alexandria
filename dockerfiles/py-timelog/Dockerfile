FROM python:3.8-slim

# Set environments
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV LOG_FILE_PATH=/var/log/time.log
ENV LOG_INTERVAL=1

# Set working dir
WORKDIR /etc/py-timelog
COPY . .

# Set entrypoint
ENTRYPOINT [ "python3", "main.py" ]
