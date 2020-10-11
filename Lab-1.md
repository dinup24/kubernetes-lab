### Lab 1  

**1. Create a docker image**  
The `Dockerfile` to build the docker image is present in the root folder

Execute the following command to build a docker image with the application.
```
docker build -t kubernetes-lab/app:0.0.1 .
```

To see the list of images `docker images`

**2. Create a docker hub account to push docker images**  
- Sign up at https://hub.docker.com/ using your email id
- Activate your account

**3. Tag the docker image**  
Tag the docker image with docker-id created in the previous step. This is required to push the image to docker hub.
```
docker tag kubernetes-lab:1.0.0 ${docker-id}/kubernetes-lab/app:0.0.1
```

**4. Login to docker hub using docker CLI**  
Execute the following command to login to docker hub
```
docker login
```
Use docker-id and password created in step 2.

**5. Push the image to docker hub**  
Execute the following command to push the image to docker hub
```
docker push ${docker-id}/kubernetes-lab/app:0.0.1
```

Once the push is successful, the image can be seen in docker hub UI (in browser)



