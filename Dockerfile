FROM openjdk:7-jre
MAINTAINER Cengiz Han <cengiz@cengizhan.com>

WORKDIR /var/dynamodb_local
RUN wget -O /tmp/dynamodb_local https://s3.eu-central-1.amazonaws.com/dynamodb-local-frankfurt/dynamodb_local_latest.tar.gz && \
    tar xfz /tmp/dynamodb_local && rm -f /tmp/dynamodb_local

EXPOSE 8000

ENTRYPOINT ["/usr/bin/java", "-Djava.library.path=.", "-jar", "DynamoDBLocal.jar", "-dbPath", "/var/dynamodb_data", "-port","8000"]

VOLUME ["/var/dynamodb_local","/var/dynamodb_data"]