#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run deploy

# navigate into the build output directory
cd dist

echo 'www.tannergoins.com' > CNAME
echo 'tannergoins.com' > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:tannerz28/tannerz28.github.io.git master

cd -
