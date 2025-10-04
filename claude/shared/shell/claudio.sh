#!/bin/bash

# Enhanced Claude Code wrapper with custom environment variables
# Usage: claudio [any claude args...]
# Examples:
#   claudio --resume
#   claudio --help
#   claudio --version

function claudio() {
  local env_vars=(
    "DISABLE_ERROR_REPORTING=1"
    "DISABLE_TELEMETRY=1"
    "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=true"
  )

  local claude_args=("--dangerously-skip-permissions")

  # Pass through all arguments to claude
  claude_args+=("$@")

  env "${env_vars[@]}" "claude" "${claude_args[@]}"
}
