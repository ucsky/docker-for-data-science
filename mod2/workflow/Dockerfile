FROM python:3.6.5-slim
LABEL MAINTAINER=knkuma
COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python","predict.py"]