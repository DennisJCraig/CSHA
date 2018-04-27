#
#Script to deploy Oozie workflow and avro schema files in HDFS
#

#!/bin/bash


BASE_DEPLOYMENT_FOLDER=$1

DEPLOY_FOLDER="./deploy"

DEPLOY_FOLDER_WORK_FLOW_FILES=${DEPLOY_FOLDER}/workFlowFiles/*
DEPLOY_FOLDER_SQL_SCRIPT=${DEPLOY_FOLDER}/sqlScripts/*
DEPLOY_FOLDER_AVRO_SCHEMA_FILES=${DEPLOY_FOLDER}/avroSchema/*

FOLDER_HQL_SCRIPT=${BASE_DEPLOYMENT_FOLDER}/scripts/hqlScripts
FOLDER_COORDINATOR_XML=${BASE_DEPLOYMENT_FOLDER}/scripts/coordinator
FOLDER_WORKFLOW_XML=${BASE_DEPLOYMENT_FOLDER}/scripts/workflow
FOLDER_BUNDLE_XML=${BASE_DEPLOYMENT_FOLDER}/scripts/bundle
FOLDER_AVRO_SCHEMA=${BASE_DEPLOYMENT_FOLDER}/scripts/avroSchema

echo "Base folder for deployment : " ${BASE_DEPLOYMENT_FOLDER}

echo "Step 1/7 : Creating workflow related folders in HDFS"

hadoop fs -mkdir -p ${FOLDER_HQL_SCRIPT}
hadoop fs -mkdir -p ${FOLDER_COORDINATOR_XML}
hadoop fs -mkdir -p ${FOLDER_WORKFLOW_XML}
hadoop fs -mkdir -p ${FOLDER_BUNDLE_XML}
hadoop fs -mkdir -p ${FOLDER_AVRO_SCHEMA}

echo "Workflow folders creation in HDFS finished"

echo "Starting deployment of workflows related files..."

# Copy dlz_*.avsc files into HDFS

for f in $(find $DEPLOY_FOLDER_AVRO_SCHEMA_FILES -iname "dlz_*.avsc")
do
  hdfs dfs -copyFromLocal -f $f ${FOLDER_AVRO_SCHEMA}
done

echo "Step 2/7 : Avro schema deployed!"

# Copy insert hql into HDFS

for f in $(find $DEPLOY_FOLDER_WORK_FLOW_FILES -iname "insert_*.sql")
do
  hdfs dfs -copyFromLocal -f $f ${FOLDER_HQL_SCRIPT}
done

echo "Step 3/7 : HQL scripts deployed!"

# Copy workflow*.xml files into HDFS

for f in $(find $DEPLOY_FOLDER_WORK_FLOW_FILES -iname "workflow_*.xml")
do
  hdfs dfs -copyFromLocal -f $f ${FOLDER_WORKFLOW_XML}
done

echo "Step 4/7 : Workflows deployed!"


# Copy coordinator*.xml files into HDFS

for f in $(find $DEPLOY_FOLDER_WORK_FLOW_FILES -iname "coordinator_*.xml")
do
  hdfs dfs -copyFromLocal -f $f ${FOLDER_COORDINATOR_XML}
done

echo "Step 5/7 : Coordinators deployed!"


# Copy bundle.xml file into HDFS

hdfs dfs -copyFromLocal -f ${DEPLOY_FOLDER}/workFlowFiles/bundle.xml ${FOLDER_BUNDLE_XML}

echo "Step 6/7 : Bundle deployed!"

echo "Step 7/7 : Creating Hive table ..."
# Create Hive Tables


for f in $(find $DEPLOY_FOLDER_SQL_SCRIPT -iname "*.sql")
do
  hive -f $f 
done
echo "Hive table creation finished."

echo "Deployment Completed!"
