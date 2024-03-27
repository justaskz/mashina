#!/usr/bin/env bats

load "setup"

@test "when OS is MacOS" {
  run mashina__is_macos

  assert_output true
}

@test "when OS is not MacOS" {
  local OSTYPE="linux"

  run mashina__is_macos

  assert_output false
}
