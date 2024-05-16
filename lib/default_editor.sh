function mashina__default_editor {
  if command -v hx >/dev/null 2>&1; then
    echo "hx"
  elif command -v nvim >/dev/null 2>&1; then
    echo "nvim"
  elif command -v vim >/dev/null 2>&1; then
    echo "vim"
  elif command -v less >/dev/null 2>&1; then
    echo "less"
  else
    echo "cat"
  fi
}
