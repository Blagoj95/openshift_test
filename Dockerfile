FROM python:3-alpine

ENV FLASK_APP=hello.py

WORKDIR /app/flask

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0","--port=5000"] 