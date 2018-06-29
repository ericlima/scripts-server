#!/bin/bash

cd ~/git/cse-usuario
git checkout develop
git pull
mvn package -Dmaven.test.skip=true
cd ~/git/cse-usuario/rsUsuario/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=9083  cse-usuario-1.0.0.jar
 
