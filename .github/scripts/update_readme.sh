#!/bin/bash

FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date)

echo -e "\n### Update by $GITHUB_USER at $TIMESTAMP\n$FREQ_RESULT" >> README.md

git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"