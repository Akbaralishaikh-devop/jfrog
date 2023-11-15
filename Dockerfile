FROM openjdk:8
RUN groupadd -g 1008 docgroup && useradd -u 1008 -g docgroup -m docuser
WORKDIR /home/docuser
EXPOSE 8082
COPY target/devops-integration.jar devops-integration.jar
USER docuser
ENTRYPOINT ["java","-jar","/home/docuser/devops-integration.jar"]



