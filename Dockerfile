FROM python:3.11-alpine

WORKDIR /app

COPY /webpage/requirements.txt .
RUN pip install -r requirements.txt

COPY ./webpage/app.py .

CMD ["python", "app.py"]

EXPOSE 5000
