# VERSION 1.0
# AUTHOR:         Jerome Guibert <jguibert@gmail.com>
# DESCRIPTION:    Node image based on debian:node
# TO_BUILD:       docker build --rm -t airdock/dynamodb-local .
# SOURCE:         https://github.com/airdock-io/docker-dynamodb-local
FROM airdock/oracle-jdk:latest
MAINTAINER Jerome Guibert <jguibert@gmail.com>

RUN mkdir -p /opt/dynamodb-local && mkdir -p /srv/dynamodb-local && \
  curl http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz | tar xvzf - -C /opt/dynamodb-local --strip-components=1 && \
  chown -R java:java /opt/dynamodb-local && chown -R java:java /srv/dynamodb-local


EXPOSE 8000

WORKDIR /opt/dynamodb-local

CMD ["java" , "-Djava.library.path=./DynamoDBLocal_lib" , "-jar DynamoDBLocal.jar", "-sharedDb", "--dbPath", "/srv/dynamodb-local"]
