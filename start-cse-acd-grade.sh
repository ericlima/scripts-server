#!/bin/bash

cd ~/git/cse-acd-grade
git checkout develop
git pull
mvn package -Dmaven.test.skip=true
cd ~/git/cse-acd-grade/rsGrade/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=9084  cse-acd-grade-1.0.0.jar
 
