DROP TABLE new_releases;

CREATE EXTERNAL TABLE new_releases
(song_name string,
artist string,
artist_id string,
album_id string,
available_market string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)
STORED AS  TEXTFILE
LOCATION '/user/w205/project/new_releases'
;





