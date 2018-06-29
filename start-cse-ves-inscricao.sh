#!/bin/bash

cd ~/git/cse-ves-inscricao
git checkout develop
git pull
mvn package -Dmaven.test.skip=true
cd ~/git/cse-ves-inscricao/rsVesInscr/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=9086  cse-ves-inscricao-1.0.0.jar
 
