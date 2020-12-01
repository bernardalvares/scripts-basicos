
DIRDEST=$HOME/Backup

if [ ! -d $DIRDEST ]
then
        echo "Criando Diretório $DIRDEST..."
	mkdir -p $DIRDEST 
fi

DAYS7=$(find -ctime -7 -name backup_home\*tgz)

if [ "$DAYS7" ]  # testa se a variável é nula ou não. Atenção nas aspas duplas. Proteger as aspas duplas porque o resultado pode dá variável pode ter caracteres especiais
then
  echo "Já foi gerado um backup do diretório $HOME nos últimos 7 dias."
  echo -n "Deseja continuar? (N/s): "
  read -n1 CONT    #n1 = só captura uma tecla que você digitar
  echo
  if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = ""  ]
  then
          echo "Backup Abortado!"
	  exit 1
  elif [ $CONT = S -o $CONT = s ]
  then
          echo "Será criado mais um backup para a mesma semana"
  else
          echo "Opção Inválida"
	  exit 2
  fi
fi
echo "Criando backup..."
ARQ="backup_home_$(date +%Y%m%d%H%M).tgz"
tar zcvpf $DIRDEST/$ARQ --absolute-names --exclude="$HOME/Google Drive" --exclude=$HOME/Videos --exclude="$DIRDEST" "$HOME/*" > /dev/null 
echo
echo "O backup de nome \""$ARQ"\" foi criado em $DIRDEST"
echo
echo "Backup Concluído!"

