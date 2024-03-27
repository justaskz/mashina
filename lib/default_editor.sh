function mashina__default_editor {
  if command -v hx >/dev/null 2>&1; then
    echo "hx"
  else
    echo "vim"
  fi
}
