FROM openjdk:8
LABEL maintainer=dinup24

COPY build/libs/kubernetes-lab-1.0.0-fat.jar /app/kubernetes-lab-1.0.0-fat.jar
ENTRYPOINT ["java", "-jar", "/app/kubernetes-lab-1.0.0-fat.jar"]
EXPOSE 8080