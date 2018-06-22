#!/bin/bash

cd ~/server-scripts
./start-cse-emresa.sh &
./start-cse-acd-curso.sh &
./start-cse-acd-disciplina.sh &
./start-cse-usuario.sh &
./start-cse-acd-grade.sh &
./start-cse-acd-analise-curri.sh &
./start-cse-ves-inscricao.sh &
./start-cse-acd-rematricula.sh &
./start-cse-acd-parametrizacao.sh &
./start-cse-acd-caa.sh &
./start-cse-acd-aluno.sh &
