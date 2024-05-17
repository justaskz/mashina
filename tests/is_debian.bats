#!/usr/bin/env bats

load "setup"

@test "when OS is Debian" {
  local OSTYPE="linux"

  run mashina__is_debian

  assert_success
}

@test "when OS is not Debian" {
  unset OSTYPE

  run mashina__is_debian

  assert_failure
}
