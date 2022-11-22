function run {
  install
}

function install {
  URL="https://someonewhocares.org/hosts/hosts"

  HOSTS_FILE="recipes/hosts/files/hosts"
  cat $HOSTS_FILE > $MASHINA_TMP/hosts
  echo "" >> $MASHINA_TMP/hosts
  # curl $URL >> $MASHINA_TMP/hosts
  sudo mv $MASHINA_TMP/hosts /etc/hosts
}

run
