#!/usr/bin/env bats

load "setup"

@test "when helix is not installed" {
  original_path="$PATH"
  PATH="$BASE_PATH"

  run mashina__default_editor

  assert_output "vim"
  assert_success

  PATH="$original_path"
}
