function mashina__is_macos() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo true
  else
    echo false
  fi
}
