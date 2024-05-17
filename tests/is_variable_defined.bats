#!/usr/bin/env bats

load "setup"

@test "when variable is defined" {
  local TEST_VAR=true

  run mashina__is_variable_defined "$TEST_VAR"

  assert_success
}

@test "when variable is not defined" {
  run mashina__is_variable_defined "$UNDEFINED_TEST_VAR"

  assert_failure
}
