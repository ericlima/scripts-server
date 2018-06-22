#!/bin/bash

cd ~/git/cse-empresa
git checkout develop
mvn package
cd ~/git/cse-acd-curso
git checkout develop
mvn package
cd ~/git/cse-acd-disciplina
git checkout develop
mvn package
cd ~/git/cse-usuario
git checkout develop
mvn package
cd ~/git/cse-acd-grade
git checkout develop
mvn package
cd ~/git/cse-acd-analise-curri
git checkout develop
mvn package
cd ~/git/cse-ves-inscricao
git checkout develop
mvn package
cd ~/git/cse-acd-rematricula
git checkout develop
mvn package
cd ~/git/acd-analise-curri
git checkout develop
mvn package
cd ~/git/cse-acd-caa
git checkout develop
mvn package
cd ~/git/cse-acd-aluno
git checkout develop
mvn package

