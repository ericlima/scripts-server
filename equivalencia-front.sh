#!/bin/sh

cd /usr/src/app/
mkdir git
git clone https://github.com/ericlima/equivalencia_front.git
cd equivalencia_front
git checkout master
git pull
ng build