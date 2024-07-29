#!/bin/bash

#isim = "ismail"
#yas = 25

if [ $yas -gt 18 ]; then
	echo "Reşitsiniz"
else
	echo "Reşit Değilsiniz"
fi

for i in {1..5}; do
	echo "Döngü döngü $i"
done

read -s -p "lütfen şifrenizi giriniz" sifre
echo $sifre

degisken=$(pwd)
echo $degisken

expr 11 + 5

