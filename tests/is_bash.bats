#!/usr/bin/env bats

load "setup"

@test "when shell is bash" {
  run mashina__is_bash

  assert_output true
}

@test "when shell is not bash" {
  unset BASH_VERSION
  run mashina__is_bash

  assert_output false
}
