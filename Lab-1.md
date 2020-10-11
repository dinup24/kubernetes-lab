### Lab 1  

**1. Clone get repo**  
Create a workspace directory (say `workspace`) and execute the following command in this directory to clone the github repo.

```
git clone https://github.com/dinup24/kubernetes-lab.git
```

The source code will be present in `workspace/kubernetes-lab` directory. 
```
cd kubernetes-lab
```

**2. Build the project to create an executable jar**   
The source code is present in `src` folder. Refer `src/main/java/io/vertx/example/HelloWorldEmbedded.java` java class, which contains API logic.  

Execute the following command to build the executable jar
```
chmod +x gradlew
./gradlew shadowJar
```

The executable jar will be created in `build/libs/kubernetes-lab-1.0.0-fat.jar`  

**3. Create a docker image**  
The `Dockerfile` to build the docker image is present in the root folder

Execute the following command to build a docker image with the executable jar created in the previous step
```
docker build -t kubernetes-lab-app:0.0.1 .
```

To see the list of images `docker images`

**4. Create a docker hub account to push docker images**  
- Sign up at https://hub.docker.com/ using your email id
- Activate your account

**5. Tag the docker image**  
Tag the docker image with docker-id created in the previous step. This is required to push the image to docker hub.
```
docker tag kubernetes-lab-app:0.0.1 ${docker-id}/kubernetes-lab-app:0.0.1
```

**6. Login to docker hub using docker CLI**  
Execute the following command to login to docker hub
```
docker login
```
Use docker-id and password created in step 2.

**7. Push the image to docker hub**  
Execute the following command to push the image to docker hub
```
docker push ${docker-id}/kubernetes-lab-app:0.0.1
```

Once the push is successful, the image can be seen in docker hub UI (in browser)



