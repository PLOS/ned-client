#!/usr/bin/env bash

ned_client_jar=(./target/ned-client-*.jar)

mvn deploy:deploy-file       \
    -DpomFile=./pom.xml      \
    -Dpackaging=jar          \
    -Dfile=${ned_client_jar} \
    -DrepositoryId=ambra     \
    -Durl=sftp://maven.ambraproject.org/home/maven2/repository/release
