create table book_publisher
(
pub_id int auto_increment primary key not null,
pub_dsc varchar(60),
unique key _pub_key_1 (pub_dsc)
)