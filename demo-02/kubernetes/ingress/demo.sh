minikube status
minikube addons list
minikube addons enable ingress

#minikube addons disable ingress

docker run --rm --name nginx -h nginx -p 8080:80 -d nginx

kubectl get po -n kube-system

kubectl run nginx --image=nginx
kubectl get po | grep nginx

kubectl expose deployment nginx --port 80

#echo "$(minikube ip) hello-world.local" | sudo tee -a /etc/hosts
cat /etc/hosts | tail -n 1

kubectl create -f ingress.yaml

kubectl edit ingress nginx

curl 192.168.99.100

openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout tls.key -out tls.crt -subj "/CA=hello-world.local" -days 365 

kubectl create secret tls hello-world-local-tls --cert=tls.crt --key=tls.key

kubectl get secret hello-world-local-tls -o yaml

curl -k https://hello-world.local
curl --cacert tls.crt https://hello-world.local


