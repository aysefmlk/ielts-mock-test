#!/usr/bin/env bash
# Publish this folder to GitHub Pages.
# Usage:  ./deploy.sh <your-github-username> [repo-name]
set -e
USER="${1:?Usage: ./deploy.sh <github-username> [repo-name]}"
REPO="${2:-ielts-mock-test}"

git init -q 2>/dev/null || true
git add -A
git commit -qm "IELTS Academic mock test site" || echo "Nothing new to commit."
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin "https://github.com/$USER/$REPO.git"
git push -u origin main

echo
echo "Pushed. Now switch on Pages:"
echo "  https://github.com/$USER/$REPO/settings/pages"
echo "  Source: Deploy from a branch   Branch: main   Folder: / (root)"
echo "Your site will be at: https://$USER.github.io/$REPO/"
