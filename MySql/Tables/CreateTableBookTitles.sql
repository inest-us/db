create table book_titles
(
title_id bigint auto_increment primary key not null,
title_dsc varchar(100),
pub_dte varchar(20) null,
pub_id int not null references book_publishers(pub_id),
isbn_10 varchar(13) not null,
isbn_13 varchar(18) not null,
num_pages smallint,
orig_price float(2) null,
type_id int not null references book_type(type_id),
cat_id int not null references book_type(type_id),
acq_id int not null references book_acquired(acq_id),
unique key _title_key_1 (isbn_10, isbn_13)
)