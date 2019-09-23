#Build

docker build -t knkuma/test:hellov2 .

# Distribute the image to a second host

docker push

docker pull