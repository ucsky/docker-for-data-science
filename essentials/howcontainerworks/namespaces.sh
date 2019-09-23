##Example 1: Process isolation

#Run an alpine docker contianer
docker container run --rm -it alpine

#Run sleep in background inside the container
sleep 300 &

#List processes
ps aux

#On the host grep for the process
ps aux | grep sleep


##Example 2: Network Isolation

#Docker run nginx
docker container run -d -p 8888:80 nginx
docker container run -d -p 80:80 nginx

#Error using same port
docker container run -d -p 80:80 nginx

netstat -plnt

#Mount files

#ubuntu images example
docker pull ubuntu:18.04