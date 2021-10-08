#!/bin/bash
function  comp {
  if [ ${1} -gt ${2} ]; then
    Res=${1}
  else
    Res=${2}
  fi
  return $(($Res))
}
res1=$(($(cat ${1})))
res2=$(($(cat ${2})))
comp ${res1} ${res2}
resgt=$?
echo Результат из файла №1: $res1
echo Результат из файла №2: $res2
echo Наибольший результат: $resgt
