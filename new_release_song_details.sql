DROP TABLE new_release_song_details;

CREATE EXTERNAL TABLE new_release_song_details
(song_id string,
Song_name string,
Artist_name string,
Artist_id string,
album_id string,
danceability string,
energy string,
key string,
loudness string,
mode string,
speechiness string,
acousticness string,
instrumentalness string,
liveness string,
valence string,
tempo string,
type string,
duration_ms string,
available_markets string,
Disc_Number string,
track_number string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)
STORED AS  TEXTFILE
LOCATION '/user/w205/project/new_release_song_details'
;





