#!/bin/sh

cd /usr/src/app/
mkdir git
git clone https://EricGeorgeLima:******@bitbucket.org/tiucs/cse-empresa.git
cd cse-empresa
git checkout develop
git pull
mvn package -Dmaven.test.skip=true
cd  rsEmpresa/target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dspring.cloud.config.uri=http://10.10.1.41:30386 -Dserver.port=9080  cse-empresa-1.0.0.jar
