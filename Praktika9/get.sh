#!/bin/bash

TASK[0]=`seq 1 46`
TASK[1]=`seq 47 79`
TASK[2]=`seq 80 100`

BASE_URL="http://interacia.net/Progi/Zadachi/index.php?hiddenField=AbromMatrixSEC/MatrixNUM.pas"


for sec in `seq 0 2`; do
  for num in ${TASK[${sec}]}; do
    echo ${BASE_URL} | sed -e "s/SEC/${sec}/g" -e "s/NUM/${num}/g" | xargs wget -O -| \
      grep "em>" | sed -e "s/<br\/*>/\n/g" -e \
      "s/<\/\{0,1\}\(strong\|em\|td\|img\)[^>]*>//g" | \
      iconv --from "CP1251" | grep -v "Блок-схема" | \
      sed -e "s|\(// Ввод.*\)|Task('Matrix$num');\n\1|g" \
      -e "s|\(program.*\)|\1\nuses PT4;|g" > Matrix${num}.pas;
  done;
done;

