minikube start --driver=hyperv
kubectl create deployment watttron --image=docker.io/emmiwinks/spice-time:watttron
kubectl get deployments
kubectl expose deployment.apps/watttron --type="NodePort" --port 5000
minikube service watttron
