#!/bin/sh

cd /usr/src/app/
mkdir git
git clone https://github.com/ericlima/equivalencia_back.git
cd equivalencia_back
git checkout master
git pull
mvn package -Dmaven.test.skip=true
cd  target
java -Xmx256m -jar -Djava.security.egd=file:/dev/./urandom -Dserver.port=8080  equivalencia_back-0.0.1-SNAPSHOT.jar