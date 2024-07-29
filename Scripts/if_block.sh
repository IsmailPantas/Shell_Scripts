#!/bin/bash

read -p "Birinci Sayıyı Giriniz: " deger
read -p "İkinci Sayıyı Giriniz: " deger2
toplam=$((deger + deger2))
if [[ toplam -gt 10 ]]
then
	echo "İki sayının toplamı $toplam 'dır ve 10 dan büyüktür"
else
	echo "İki sayının toplamı $toplam 'dır ve 10 dan küçüktür"
fi


