# Use latest Python runtime as base image
FROM python:3.6.3-alpine3.6

LABEL maintainer="kiran.kumar@gfk.com"

# Set the working directory to /app and copy current dir
WORKDIR /app
COPY hello.py /app

# Run hello_world.py when the container launches
CMD ["python", "hello_world.py"]
