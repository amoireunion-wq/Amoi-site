#!/bin/bash
# AMOI Site Deployment Script
# Usage: ./deploy.sh "commit message"
cd "$(dirname "$0")"
git add -A
git commit -m "${1:-Update site}" || echo "Nothing to commit"
git push origin main
echo "Deployed! Site will be live at https://amoi.re in ~1 minute"
