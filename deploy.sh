#!/bin/zsh

set -e
cd blog
hugo

cd public

git add .

# Create commit message
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
# commit changes.
git commit -m "$msg"

git push origin main
