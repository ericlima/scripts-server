#!/bin/bash

cd ~/git/cse-acd-disciplina
git checkout develop
git pull
mvn package -Dmaven.test.skip=true
cd ~/git/cse-acd-disciplina/rsDisciplina/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=9082  cse-acd-disciplina-1.0.1.jar
 
