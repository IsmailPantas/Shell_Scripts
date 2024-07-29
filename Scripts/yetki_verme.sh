#!/bin/bash

read -p "dosya adını giriniz:   " file
if [[-r $file ]] && [[-w file]]
then
	echo "Bu doysa hem okunabilir hem yazılabilir"
else
	read -r "Belirtilen dosya redable ve writable olsun mu?(evet hayır)"
       	secenek
	if [[$secenek = "hayır"]]
	then
		echo "Cevabınız hayır yetki verilmedi"
	elif [[$secenek = "evet"]]
	then
		chmod +wr $file
		echo "Cevabınız evet yetki verildi"
	else
		echo "bye"
	fi
fi
