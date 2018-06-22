#!/bin/bash

cd ~/git/cse-acd-caa
git checkout develop
git pull
mvn package
cd ~/git/cse-acd-caa/rsCaa/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=9089 cse-acd-caa-1.0.0.jar 
 
