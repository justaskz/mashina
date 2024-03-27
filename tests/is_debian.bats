#!/usr/bin/env bats

load "setup"

@test "when OS is Debian" {
  local OSTYPE="linux"

  run mashina__is_debian

  assert_output true
}

@test "when OS is not Debian" {
  run mashina__is_debian

  assert_output false
}
