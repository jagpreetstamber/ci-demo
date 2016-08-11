#!/bin/bash

usage ()
{
  echo 'Usage:' $0 '<branch name>'
  exit
}

if [ "$#" -ne 1 ]
then
  usage
fi

echo 'Cloning artifacts from' $1 'branch'
git clone -b $1 git@github.com:jagpreetstamber/MyArtifacts.git --depth 1

echo 'Copying required artifacts'
cp build/libs/*.war MyArtifacts/webapps/ROOT.war
cp web.config MyArtifacts/web.config
cp scripts/azure/.deployment MyArtifacts/.deployment
cp scripts/azure/deploy.sh MyArtifacts/deploy.sh

cd MyArtifacts

git add webapps/ROOT.war
git add web.config
git add .deployment
git add deploy.sh
git commit --allow-empty -m $SNAP_COMMIT' on jagpreetstamber/ci-demo'

git push origin $1

echo 'Finished successfully'