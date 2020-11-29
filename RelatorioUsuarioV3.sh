#!/bin/bash

#########################################################

#HORA=$1
HORA=$(date +%H)
MIN=$(date +%M)

# CASE PARA DEFINIR PERÍODO 

echo
case $HORA in
  0[6-9] | 1[01])
                   echo "Bom Dia!"
	  ;;
          1[2-7])
                   echo "Boa Tarde!"
          ;;
               *) 
                   echo "Boa Noite!"
	  ;;
esac
# IF PARA REDUZIR A HORA E DEFINIR AMPM

     if [ $HORA -ge 12 ]
then
     AMPM=PM
     if [ $HORA -ne 12 ]
then
     AMPM=AM

fi
     fi
echo
echo "A HORA  ATUAL É: $HORA:$MIN $AMPM"
echo

