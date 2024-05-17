#!/usr/bin/env bats

load "setup"

@test "when shell is bash" {
  local BASH_VERSION="3.2"

  run mashina__is_bash

  assert_success
}

@test "when shell is not bash" {
  unset BASH_VERSION

  run mashina__is_bash

  assert_failure
}
