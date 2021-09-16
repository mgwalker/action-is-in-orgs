#!/bin/env sh

# Case-insensitive, no regex, whole word
GREP="grep -iFw"
for ORG in $INPUT_ORGS; do
  GREP=$(echo "$GREP" "-e \"$ORG\"")
done

wget -qO- https://api.github.com/users/$GITHUB_ACTOR/orgs | \
  jq -r ".[].login" | \
  eval $GREP
