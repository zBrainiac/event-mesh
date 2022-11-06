CREATE TABLE public.geolocation_ch (
	sensor_id int4 NULL,
	city varchar(255) NULL,
	lat float4 NULL,
	log float4 NULL
);


\copy geolocation_ch FROM '/tmp/geolocation_ch.csv' DELIMITER ',' CSV HEADER;