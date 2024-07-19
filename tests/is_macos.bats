#!/usr/bin/env bats

load "setup"

@test "when OS is MacOS" {
  local OSTYPE="darwin"

  run mashina__is_macos

  assert_success
}

@test "when OS is not MacOS" {
  local OSTYPE="linux"

  run mashina__is_macos

  assert_failure
}
