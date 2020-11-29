#!/bin/bash


# if para definir período
# estou considerando que das 00:00 às 06:00 è noite
HORA=$(date +%H)

MIN=$(date +%M)

echo 
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then
  echo "Bom Dia!"
elif [ $HORA -ge 12 -a $HORA -lt 18 ]
then
  echo "Boa Tarde!"
else
  echo "Boa Noite!"
fi

# If para reduzir a hora e definir AMPM

if [ $HORA -ge 12 ]
then
       AMPM=PM
       if [ $HORA -ne 12 ]
       then
	     HORA=$(expr $HORA - 12)
       fi
else
       AMPM=AM
fi
echo
echo "A HORA ATUAL É: $HORA:$MIN $AMPM"
echo 
