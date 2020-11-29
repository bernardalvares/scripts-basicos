#!/bin/bash


ls /home/$1 > /dev/null 2>&1 || { echo "Usuário Inexistente" ; exit 1; }

DESC=$(grep $1 /etc/passwd | cut -d":" -f5)

echo""
echo "Relatório do Usuário: $1"
echo ""
echo "O nome completo do usuário $1 é: $DESC"
echo ""
