function mashina__is_debian {
  if [[ "$OSTYPE" == "linux"* ]]; then
    echo true
  else
    echo false
  fi
}
