FROM python:3.9.6-alpine3.14

WORKDIR /app

COPY . .
RUN apk add --no-cache gcc libffi-dev musl-dev ffmpeg aria2 && pip install --no-cache-dir -r requirements.txt
EXPOSE 80 8888 8080 443 5130 5131 5132 5133 5134 5135 3306
CMD [ "python3", "./main.py" ]
