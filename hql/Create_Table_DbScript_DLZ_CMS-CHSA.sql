-----------------------------------------------------------------------------------
--				Script to create tables in DLZ environment.
-----------------------------------------------------------------------------------

USE dlz_mfm_cms;

CREATE TABLE IF NOT EXISTS dlz_CostCenter
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_costcenter.avsc');

CREATE TABLE IF NOT EXISTS dlz_Location
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_location.avsc');

CREATE TABLE IF NOT EXISTS dlz_tblCostCenterContacts
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_tblcostcentercontacts.avsc');

CREATE TABLE IF NOT EXISTS dlz_tblRoundFindings
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_tblroundfindings.avsc');

CREATE TABLE IF NOT EXISTS dlz_tblRoundLibraries
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_tblroundlibraries.avsc');

CREATE TABLE IF NOT EXISTS dlz_tblRoundLibraryItems
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_tblroundlibraryitems.avsc');

CREATE TABLE IF NOT EXISTS dlz_tblRounds
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_tblrounds.avsc');

CREATE TABLE IF NOT EXISTS dlz_tblRoundTeams
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_tblroundteams.avsc');

CREATE TABLE IF NOT EXISTS dlz_tblRoundTemplates
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_tblroundtemplates.avsc');

CREATE TABLE IF NOT EXISTS dlz_WorkOrder
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_workorder.avsc');

CREATE TABLE IF NOT EXISTS dlz_CustomerSegment
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_customersegment.avsc');

CREATE TABLE IF NOT EXISTS dlz_Status
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
  STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
  TBLPROPERTIES ('avro.output.codec'='snappy', 'avro.schema.url'='hdfs://nameservice-dev/user/oozie/share/lib-ext/medxcel/scripts/avroSchema/dlz_status.avsc');

