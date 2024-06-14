function mashina__is_macos {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    return 0
  else
    return 1
  fi
}
