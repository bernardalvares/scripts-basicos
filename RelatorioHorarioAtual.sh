


HORA=$(date +$H)
HORA=$1
MIN=$(date +$M)

# if para definir período
echo
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then
       echo "Bom dia!"
elif [ $HORA -ge 12 -a $HORA -lt 18 ]
then
      echo "Boa tarde!"
else
      echo  "Boa noite"
fi

# If para definir AM/PM

if [ $HORA -ge 12 ]
then
     AMPM=PM
else
     AMPM=AM
fi

# If para reduzir a hora

if [ $HORA -gt 12 ]
then
     HORA=$(expr $HORA - 12)
fi

echo
echo "A hora atual é: $HORA:$MIN $AMPM"
echo
