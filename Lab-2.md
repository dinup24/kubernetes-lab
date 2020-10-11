### Lab 2  

**1. Start the app using the docker image**  
Execute the following command to start the docker container
```
docker run -it -p 8080:8080 ${docker-id}/kubernetes-lab-app:0.0.1
```

Use `-d` option to run the container in background.  
To see the list of running containers `docker ps`

**2. Access the app**  
Now point your browser at `http://localhost:8080/api/greetings`  
or
```
curl http://localhost:8080/api/greetings
```

You should see the message **Hello World!**

**3. Stop the app**  
Exceute the following command to stop the container
```
docker stop ${container-id}
```
