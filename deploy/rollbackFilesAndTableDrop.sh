#
#Script to rollback Oozie workflow files in HDFS and Hive table drop.
#

#!/bin/bash


BASE_DEPLOYMENT_FOLDER=$1

echo "Executing Roll back with base folder for deployment : " ${BASE_DEPLOYMENT_FOLDER}

hadoop fs -rm -r -skipTrash ${BASE_DEPLOYMENT_FOLDER}/scripts

echo "Step 1/2 : Deployment folder > " ${BASE_DEPLOYMENT_FOLDER}/scripts "removed." 

ROLLBACK_FOLDER_SQL_SCRIPT=.ollbackSqlScripts/*

echo "Step 2/2 : Executing Hive table drop ..."

for f in $(find $ROLLBACK_FOLDER_SQL_SCRIPT -iname "*.sql")
do
  hive -f $f 
done

echo "Hive table drop finished."

echo "Rollback Completed!"
