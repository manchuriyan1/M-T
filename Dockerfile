FROM python:3.9-slim
WORKDIR /app

COPY requirements.txt .
RUN pip3 install --upgrade pip && pip3 install -r requirements.txt

COPY . .
EXPOSE 8000

#CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8000"]
CMD ["python3", "main.py"]
