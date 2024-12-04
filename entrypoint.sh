#!/bin/bash

echo "======================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_ACTOR}"
git config --global --add safe.directory /github/worskpace

python3 /usr/bin/feed.py

git add -A && commit -m "Update Feed"
gti push --set-upstream origin main

echo "======================="