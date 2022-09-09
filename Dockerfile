FROM openjdk:8-jdk-alpine
# Environment Variable that defines the endpoint of sentiment-analysis python api.
ENV SA_LOGIC_API_URL http://localhost:5000
ADD target/sentiment-analysis-web-0.0.1.jar /
EXPOSE 8080
CMD ["java", "-jar", "spring-petclinic-2.7.0-SNAPSHOT.jar", "--sa.logic.api.url=${SA_LOGIC_API_URL}"]

#this is test line for git test
