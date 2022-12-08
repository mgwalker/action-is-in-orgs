#!/bin/env sh

# Case-insensitive, no regex, whole word
GREP="grep -iFw"
for ORG in $INPUT_ORGS; do
  GREP=$(echo "$GREP" "-e \"$ORG\"")
done

set +e

OUT=$(wget -qO- https://api.github.com/users/$GITHUB_ACTOR/orgs | \
    jq -r ".[].login" | \
    eval $GREP)
INORG=$(echo $?)

if [ "$INORG" -eq "0" ]
then
  echo "in_orgs=true" >> $GITHUB_OUTPUT
else
  echo "in_orgs=false" >> $GITHUB_OUTPUT
fi
