#!/bin/bash

cd ~/git/cse-acd-curso
git checkout develop
git pull
mvn package
cd ~/git/cse-acd-curso/rsCseAcdCurso/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=9081  cse-acd-curso-1.0.0.jar
 
