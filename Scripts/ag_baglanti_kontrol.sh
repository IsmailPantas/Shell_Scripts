#!/bin/bash

hedef_adres="google.com"

deneme_suresi=5

echo"$hedef_adres bağlantısına ping atılmakta"
ping -c $deneme_suresi $hedef_adres > /dev/null

if [ $? -eq 0 ];
	then
		echo "Başarıyla $hedef_adres bağlantısına bağlanıldı"
else
	echo "$hedef_adres bağlantısına bağlanma işlemi başarısız"
fi

echo -e "\nAğ arayüz bilgileri:"
ifconfig -a

echo -e "\nDNS çözümleme sonucu:"
host $hedef_adres

echo -e "\nAğ geçidi bilgileri"
ip route
