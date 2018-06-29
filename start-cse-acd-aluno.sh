#!/bin/bash

cd ~/git/cse-acd-aluno
git checkout develop
git pull
mvn package -Dmaven.test.skip=true
cd ~/git/cse-acd-aluno/rsCseAcdAluno/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=9090 cse-acd-aluno-1.0.0.jar 
 
