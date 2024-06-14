function append_to_custom_history {
  if [ $? -eq 0 ]; then
    last_command=$(history 1)
    echo "$last_command" >> "$MASHINA_TMP/history"
  fi
}
