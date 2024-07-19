function run {
  install
}

function install {
  local URL="https://someonewhocares.org/hosts/hosts"
  local HOSTS_FILE="$MASHINA_SOURCE/recipes/hosts/files/hosts"

  cat "$HOSTS_FILE" > "$MASHINA_TMP/hosts"

  # echo "" >> "$MASHINA_TMP/hosts"
  # curl -s $URL >> "$MASHINA_TMP/hosts"

  sudo mv "$MASHINA_TMP/hosts" /etc/hosts
}

run
