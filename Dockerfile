FROM maven:3.8.4-openjdk-17
COPY . /cosmosdb
WORKDIR /cosmosdb
RUN mvn clean package
CMD ["mvn", "compile", "exec:java"]

# mvn compile exec:java 