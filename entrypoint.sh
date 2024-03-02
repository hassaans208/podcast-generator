#!/bin/bash

echo "================================"

git --global config.name "${GITHUB_ACTOR}"
git --global config.email "${INPUT_EMAIL}"
git --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin master

echo "================================"