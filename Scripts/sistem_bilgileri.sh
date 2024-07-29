#!/bin/bash

echo "İşletim Sisteminiz Hakkında Bilgiler:"
uname -a


echo -e "\nCpu'nuz Hakkında Bilgiler:"
lscpu


echo -e "\nBelleğiniz Hakkıda Bİlgiler:"
free -h


echo -e "\nDiskiniz Hakkında Bilgiler:"
df -h


echo -e "\nAğ Arayüzünüz Hakkında Bilgiler"
ifconfig -a
