# NED Client Libraries

These libraries are auto generated from NED's Swagger spec via swagger codegen. The library versions correspond to the version of the NED API they were generated from.

## Setup the code generator

See https://github.com/swagger-api/swagger-codegen

This assumes you have built pulled and built their master branch into $HOME/applications/swagger-codegen


## Generate/Update the client libraries

Make sure the NED API is running

Run the generator (open the script to see possible arguments):

    ./generate_clients.sh

## Distribute

### Java

Make sure your settings have the ambraproject.org credentials in them. After the clients have been generated, you should be able to run:

    cd java_deploy && ./deploy.sh

Then you should be able to find them in
http://maven.ambraproject.org/maven2/release/org/plos/ned-client

### Ruby

See http://bundler.io/git.html

Perhaps add something like this to your Gemfile:

git 'https://github.com/plos/named-entities.service.git' do
  gem 'client/ruby'
end

### Python

TODO

## Run the samples

### Java

    cd java && mvn clean install && cd ..
    cd sample-java
    mvn install -DskipTests && mvn exec:java

### Ruby

    cd ruby
    gem install ned_client-*.gem
    cd ..
    ruby sample.rb

### Python

    pip install certifi six urllib3

    PYTHONPATH=python python sample.py
