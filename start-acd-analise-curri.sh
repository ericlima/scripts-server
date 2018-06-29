#!/bin/bash

cd ~/git/acd-analise-curri
git checkout SP5_INSCRICAO_20180615
git pull
mvn package -Dmaven.test.skip=true
cd ~/git/acd-analise-curri/rsAcdAnaliseCurri/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=8080  acd-analise-curri-1.0.0.jar & >> null 
echo acd-analise-curri@ : 8080
