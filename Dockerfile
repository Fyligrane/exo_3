FROM python:3.10.8-alpine3.16
WORKDIR /app
COPY src/ ./
EXPOSE 5000
RUN  apk update && \
    pip install --upgrade pip && \
    pip install -r requirements.txt
CMD ["python", "app.py"]