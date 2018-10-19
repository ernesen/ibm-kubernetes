@echo off

minikube status | find /i "minikube: Running"
if not errorlevel 1 (
	echo "minikube: Running already"
) else (
	minikube start --memory 10240 --vm-driver=virtualbox
	rem minikube start --memory 10240 --vm-driver=virtualbox --insecure-registry localhost:5000
	rem minikube start --cpus 4 --disk-size 100g --memory 6000 --insecure-registry registry.minikube.st81ess.com:80
)

SET DOCKER_TLS_VERIFY=1
SET DOCKER_HOST=tcp://192.168.99.100:2376
SET DOCKER_CERT_PATH=C:\Users\IBM_ADMIN\.minikube\certs
rem SET DOCKER_CERT_PATH="D:\VirtualBox VMs\.minikube\certs"
SET DOCKER_MACHINE_NAME=default
SET COMPOSE_CONVERT_WINDOWS_PATHS=true

rem run @FOR /f "tokens=*" %i IN ('minikube docker-env') DO @%i

rem cmd kubectl config use-context minikube
rem cmd kubectl get node

rem run @FOR /f "tokens=*" %i IN ('minikube docker-env') DO @%i
rem cmd @FOR /f "tokens=*" %i IN ('minikube docker-env') DO @%i
rem run kubectl config set-context minikube
rem cmd kubectl config set-context minikube
rem cmd kubectl config get-contexts

rem exit 
rem exit

REM minikube get-k8s-versions
REM Sharing a local registry with minikube
REM https://blog.hasura.io/sharing-a-local-registry-for-minikube-37c7240d0615
REM docker push 192.168.99.100:5000/my-image

rem https://stackoverflow.com/questions/42564058/how-to-use-local-docker-images-with-minikube?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa




