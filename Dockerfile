FROM python:3-alpine

WORKDIR /app/flask

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0 --port=8080
