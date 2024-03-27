#!/usr/bin/env bats

load "setup"

@test "when shell is zsh" {
  local ZSH_VERSION="5.9"

  run mashina__is_zsh

  assert_output true
}

@test "when shell is not zsh" {
  run mashina__is_zsh

  assert_output false
}
