### Kubernetes Lab

- [Lab 1](Lab-1.md)
- [Lab 2](Lab-2.md)
- [Lab 3](Lab-3.md)


This project shows a very simple hello world app, which has a simple HTTP server which simply returns "Hello World!" to every request.

The build.gradle uses the Gradle shadowJar plugin to assemble the application and all it's dependencies int a single "fat" jar.

To build the "fat jar"

    ./gradlew shadowJar

Because the application plugin is being used, you may directly run the application:

    ./gradlew run

You may also run the fat jar as a standalone runnable jar:

    java -jar build/libs/kubernetes-lab-1.0.0-fat.jar

(You can take that jar and run it anywhere there is a Java 8+ JDK. It contains all the dependencies it needs so you don't need to install Vert.x on the target machine).

Now point your browser at http://localhost:8080
