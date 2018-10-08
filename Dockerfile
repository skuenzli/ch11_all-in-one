FROM maven:3.5-jdk-10

ENV WORKDIR=/project
RUN mkdir -p ${WORKDIR}
COPY . ${WORKDIR}
WORKDIR ${WORKDIR}
RUN mvn -f pom.xml clean verify
RUN cp ${WORKDIR}/target/ch11-0.1.0.jar /app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
