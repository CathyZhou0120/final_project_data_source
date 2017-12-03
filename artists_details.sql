DROP TABLE artists_details;

CREATE EXTERNAL TABLE artists_details
(artist_id string,
name string,
follower string,
genre string,
spotify_id string,
image string,
popularity string,
related_artist string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)
STORED AS  TEXTFILE
LOCATION '/user/w205/project/artists_details'
;




 
 



