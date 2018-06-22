#!/bin/bash

cd ~/git/acd-analise-curri
git checkout develop
git pull
mvn package
cd ~/git/acd-analise-curri/rsAcdAnaliseCurri/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=8080  acd-analise-curri-1.0.0.jar
 
