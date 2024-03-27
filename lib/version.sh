function mashina__version {
  local commit_hash
  commit_hash="$(git -C "$MASHINA_SOURCE" rev-parse --short=6 master)"
  echo "$commit_hash"
}
