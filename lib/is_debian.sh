function mashina__is_debian {
  if [[ "$OSTYPE" == "linux"* ]]; then
    return 0
  else
    return 1
  fi
}
