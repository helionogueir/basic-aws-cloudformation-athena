CREATE EXTERNAL TABLE IF NOT EXISTS users (
  `id` bigint,
  `username` string,
  `profile` string,
  `firtname` string,
  `lastname` string,
  `birthday` date,
  `genre` string,
  `created` timestamp,
  `modified` timestamp
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://basic-aws-cloudformation-athena-dev/users/';