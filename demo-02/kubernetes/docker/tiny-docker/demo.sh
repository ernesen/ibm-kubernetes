docker build -t webserver .
docker run --rm --name webserver -p 8080:8080 webserver

curl 192.168.99.100:8080

docker stop webserver

docker images | grep webserver

docker rmi webserver

kubectl exec -it test-5ff4c5496c-psh6z -- cat /etc/hosts

