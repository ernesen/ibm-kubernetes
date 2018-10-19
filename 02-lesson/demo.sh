# How To Remove Docker Images, Containers, and Volumes 
# https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes

# Deploy Nginx container
kubectl run my-web --image=nginx --port=80

# Expose Nginx container
kubectl expose deployment my-web --target-port=80 --type=NodePort

# Get the node IP for minikube
minikube ip 

# Check the NodePort 
kubectl describe svc my-web

# Access Ngnix
kubectl get svc | grep my-web



docker run --name test -d busybox sh -c "while true; do $(echo date); sleep 1; done"

#Purging All Unused or Dangling Images, Containers, Volumes, and Networks
docker system prune -a


#Remove dangling images
docker images -f dangling=true

#Remove all exited containers
docker ps -a -f status=exited


# Find Out What Ports Are Listening 
netstat -l | grep 3000
netstat -na | grep -i LISTEN | grep 80

docker build -t ernesen/web-python .
docker run -d --name web-python -h web-python -p 5000:5000 web-python
