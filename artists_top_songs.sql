DROP TABLE artists_top_songs;

CREATE EXTERNAL TABLE artists_top_songs
(song_id string,
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
LOCATION '/user/w205/project/artists_top_songs'
;


 



 

 











