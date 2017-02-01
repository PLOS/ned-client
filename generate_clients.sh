#!/bin/bash

# Copyright (c) 2017 Public Library of Science
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.

set -x

CODEGEN=$HOME/applications/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar
# CODEGEN=swagger-codegen-cli.jar

SERVICE=http://localhost:8080/v1

SWAGGER=$SERVICE/swagger.json

CONFIG=$SERVICE/service/config


if [[ -n "$1" ]]; then
  CODEGEN=$1
# else
#
#   if [ ! -f "$CODEGEN" ]; then
#     wget http://repo1.maven.org/maven2/io/swagger/swagger-codegen-cli/2.1.5/swagger-codegen-cli-2.1.5.jar -O swagger-codegen-cli.jar
#   fi

fi

if [[ -n "$2" ]]; then
  SERVICE=$2
fi

# exit if there is an error
set -e

VERSION=$(echo "import json, requests; print(requests.get('${CONFIG}').json()['version'].split(' ')[0])" | python2)

GENERATE="java -jar $CODEGEN generate"

echo "VERSION: $VERSION"


# JSON SWAGGER SPEC

$GENERATE -i $SWAGGER -l swagger -o ./swagger

# STATIC HTML DOC

# $GENERATE -i $SWAGGER -l html -o ./html

# PYTHON

echo '{
  "packageName": "ned_client",
  "packageVersion": "'${VERSION}'"
}' > ned_python.json

# $GENERATE -i $SWAGGER -l python -o ./python -c ned_python.json

# RUBY

echo '{
  "gemName": "ned_client",
  "moduleName": "NedClient",
  "gemVersion": "'$(echo ${VERSION}|sed 's/\-/\./')'"
}' > ned_ruby.json

# $GENERATE -i $SWAGGER -l ruby -o ./ruby -c ned_ruby.json \
#   && cd ruby && rm *.gem && gem build ned_client.gemspec && cd ..

# JAVA

echo '{
  "groupId": "org.plos",
  "artifactId": "ned-client",
  "apiPackage": "org.plos.ned_client.api",
  "modelPackage": "org.plos.ned_client.model",
  "invokerPackage": "org.plos.ned_client",
  "artifactVersion": "'${VERSION}'"
}' > ned_java.json

# to generate LocalDate objects use "dateLibrary": "java8" in above json
#   cant use yet: https://github.com/swagger-api/swagger-codegen/issues/2377


echo 'mvn deploy:deploy-file \
		-DpomFile="pom.xml" \
		-DgroupId="org.plos" \
		-Dversion="'${VERSION}'" \
		-DartifactId="ned-client" \
    -Dpackaging=jar \
    -Dfile="../java/target/ned-client-'${VERSION}'.jar" \
    -DrepositoryId=ambra \
    -Durl=sftp://maven.ambraproject.org/home/maven2/repository/release
' > java_deploy/deploy.sh

$GENERATE -i $SWAGGER -l java \
  -o ./java -t ./templates/Java \
  --import-mappings Group=org.plos.ned_client.model.Group,Relationship=org.plos.ned_client.model.Relationship \
  -c ned_java.json \
  && cd java && mvn clean install && cd ..


# Run a quick test
# PYTHONPATH=python python sample.py
