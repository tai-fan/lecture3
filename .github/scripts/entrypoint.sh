#!/bin/bash
echo "Running Vowel Frequency Analyzer..."

RESULT=$(python3 .github/scripts/frequency.py data.txt)
echo "Analysis Result: $RESULT"

bash .github/scripts/update_readme.sh "$RESULT" "$GITHUB_USER"

echo "README.md update complete."