### Lab 3

**1. Ensure you are able connect to Kubernetes cluster**  
Execute the following command to get the list of pods
```
kubectl get pods
```
**2. Create a namespace for your application**    
Execute the following command to create a namespace "kubernetes-app"
```
kubectl create namespace kubernetes-app
```

**3. Deploy the app in kubernetes cluster**  
The deployment configuration is in `kubernetes/app-deployment.yaml`. Replace `${docker-id}` with your docker hub id.
Excute the following command to apply the deployment configuration (ie., to deploy the app)
```
kubectl apply -f kubernetes/app-deployment.yaml -n kubernetes-app
```
To check the status of deployment: `kubectl get deployment -n kubernetes-app`  
To check the status of pods: `kubectl get pods -n kubernetes-app`

**4. Expose the microservice deployment using a service**  
The service configuration is in `kuberentes/app-svc.yaml`
Excute the following command to apply the service configuration.
```
kubectl apply -f kubernetes/app-svc.yaml -n kubernetes-app
```
To see the list of service: `kubectl get svc -n kubernetes-app`

**5. Expose the app outside the cluster**  
Expose to the microservice outside the cluster via an ingress. Execute the following command to create the ingress rule.
```
kubectl apply -f kubernetes/ingress.yaml -n kubernetes-app
```

**5. Access the app**  
Now point your browser at `http://{host}/api/greetings`  
or
```
curl -kL http://{host}/api/greetings
```

You should see the message **Hello World!**
