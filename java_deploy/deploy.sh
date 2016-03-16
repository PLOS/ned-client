mvn deploy:deploy-file \
		-DpomFile="pom.xml" \
		-DgroupId="org.plos" \
		-Dversion="1.1.1" \
		-DartifactId="ned-client" \
    -Dpackaging=jar \
    -Dfile="../java/target/ned-client-1.1.1.jar" \
    -DrepositoryId=ambra \
    -Durl=sftp://maven.ambraproject.org/home/maven2/repository/release

