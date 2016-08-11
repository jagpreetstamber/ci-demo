#!/bin/bash

###################################################################################
# Deployment
# ----------

echo Handling Basic Web Site deployment.

WAR_SRC=/d/home/site/repository/
DST_DIR=/d/home/site/wwwroot/
cd ${WAR_SRC}
git gc
cd /
rm -rfv ${DST_DIR%.*}
mkdir ${DST_DIR}
cp -rfv ${WAR_SRC}/* ${DST_DIR}

echo "Finished successfully."
