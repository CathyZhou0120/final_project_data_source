DROP TABLE album_details;

CREATE EXTERNAL TABLE album_details
(Artist_id string,
Album_name string,
Album_id string,
available_markets string,
genres string,
popularity string,
release_date string,
image string,
tracks string)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)
STORED AS  TEXTFILE
LOCATION '/user/w205/project/album_detail'
;

 
 

 



