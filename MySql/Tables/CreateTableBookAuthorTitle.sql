create table book_author_title
(
title_id bigint not null references book_titles(title_id),
auth_id int not null references book_authors(auth_id),
unique key _aut_title_key_1 (title_id, auth_id)
)