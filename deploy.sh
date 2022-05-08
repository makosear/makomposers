#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'New Deployment'
git push -f git@hub.com:makosear/makomposer.git master:gh-pages

cd -