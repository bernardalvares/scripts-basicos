#!/bin/bash


ls /home/$1 > /dev/null 2>&1 || { echo "Usuário Inexistente" ; exit 1; }

echo "Relatório do Usuário: $1"



