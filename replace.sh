#!/bin/bash


if [ $# -eq 0 ]; then
  echo "No argument supplied, supply which folder to check"
  exit 1
fi

DIR="/Users/sebbalex/workspace/hack.developers.italia.it/hack.developers.italia.it/$1"

if [ ! -d "$DIR" ]; then
  echo "$DIR not exists"
  exit 1
fi

cd $DIR

for i in $(ls -1)
do
  echo $i
  sed -i.bak "s/\?ver=.*'/'/g" $i/index.html
  sed -i.bak "s/https:\/\/hack.developers.italia.it//g" $i/index.html
  sed -i.bak  "s/document.location = document.URL.replace(\/\^http:\/i, \"https:\");/\/\/document.location = document.URL.replace(\/\^http:\/i, \"https:\");/g" $i/index.html
done
