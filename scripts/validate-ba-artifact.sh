#!/usr/bin/env bash

set -euo pipefail

usage() {
  echo "Usage: scripts/validate-ba-artifact.sh <artifact.md>"
  exit 1
}

if [[ $# -ne 1 ]]; then
  usage
fi

TARGET_FILE="$1"

if [[ ! -f "$TARGET_FILE" ]]; then
  echo "ERROR: file not found: $TARGET_FILE"
  exit 1
fi

echo "Validating BA artifact: $TARGET_FILE"

MISSING_COUNT=0

require_heading() {
  local heading="$1"
  if ! grep -Eq "^#+[[:space:]]+$heading$" "$TARGET_FILE"; then
    echo "MISSING SECTION: $heading"
    MISSING_COUNT=$((MISSING_COUNT + 1))
  fi
}

require_pattern() {
  local label="$1"
  local pattern="$2"
  if ! grep -Eq "$pattern" "$TARGET_FILE"; then
    echo "MISSING PATTERN: $label"
    MISSING_COUNT=$((MISSING_COUNT + 1))
  fi
}

# Core sections
require_heading "Business Context"
require_heading "User Story"
require_heading "Actors"
require_heading "Preconditions"
require_heading "Main Flow"
require_heading "Acceptance Criteria"
require_heading "Business Rules"

# ID and format checks
require_pattern "User Story ID (US-MODULE-001)" "US-[A-Z0-9]+-[0-9]{3}"
require_pattern "Acceptance Criteria ID (AC-MODULE-001)" "AC-[A-Z0-9]+-[0-9]{3}"
require_pattern "Business Rule ID (BR-MODULE-001)" "BR-[A-Z0-9]+-[0-9]{3}"
require_pattern "Given/When/Then block" "Given[[:space:][:print:]]+When[[:space:][:print:]]+Then"

# Traceability expectation
if ! grep -Eq "Traceability|Requirement ID|REQ-" "$TARGET_FILE"; then
  echo "WARNING: no explicit traceability section detected"
fi

if [[ "$MISSING_COUNT" -eq 0 ]]; then
  echo "PASS: mandatory sections and patterns detected."
  exit 0
fi

echo "FAIL: $MISSING_COUNT required checks missing."
exit 2
