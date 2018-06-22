#!/bin/bash

cd ~/git/cse-acd-rematricula
git checkout develop
git pull
mvn package
cd ~/git/cse-acd-rematricula/rsRematricula/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=9087  cse-acd-rematricula-1.0.0.jar
 
