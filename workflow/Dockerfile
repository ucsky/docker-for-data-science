FROM python:3.6.5-slim
LABEL MAINTAINER=knkuma
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["predict.py"]