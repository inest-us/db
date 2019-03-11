create table book_authors
(
auth_id int auto_increment primary key not null,
auth_name varchar(60) not null,
unique key _auth_key_1 (auth_name)
)