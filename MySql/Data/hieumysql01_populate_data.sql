insert into book_type (type_id, type_desc)
values (1, 'Hard Cover')

insert into book_type (type_id, type_desc)
values (2, 'Paper back')
-- ------------------------------------------------------------------------------
delete from bookcategory;

insert into bookcategory (cat_id, cat_desc)
values (1, 'Computer')

insert into bookcategory (cat_id, cat_desc)
values (2, 'Fiction')

insert into bookcategory (cat_id, cat_desc)
values (3, 'Non Fiction')

-- ------------------------------------------------------------------------------
insert into book_acquired (acq_id, acq_desc)
values (1, 'Bought New')

insert into book_acquired (acq_id, acq_desc)
values (2, 'Bought Used')

insert into book_acquired (acq_id, acq_desc)
values (3, 'Given as gift')
-- ------------------------------------------------------------------------------
insert into book_publishers (pub_dsc)
values
 ('OReilly Media')
,('Little, Brown and Company')

insert into book_publishers (pub_dsc)
values
 ('Houghton Mifflin')
,('Penguin Classics')
,('Aladdin Pictures Books')

-- ------------------------------------------------------------------------------
insert into book_titles (
title_dsc,
pub_dte,
pub_id,
isbn_10,
isbn_13,
num_pages,
orig_price,
type_id,
cat_id,
acq_id )
values
 ('Head Rush Ajax', 'March 2006', 1, '0-596-10225-9', '', 446, 39.99, 2, 3, 1)
,('The Historian', 'June 2005', 2, '0-316-01177-0', '', 656, 25.95, 1, 1, 1)
,('3 Nights in August', 'April 2005', 3, '0-618-40544-5', '', 256, 25.00, 1, 2, 1)
,('Ajax design patterns', 'June 2006', 1, '0-596-10180-5', '', 655, 44.99, 2, 3, 1)
,('CSS: the definitive guide', 'November 2006', 1, '0-596-52733-0', '', 536, 44.99, 2, 3, 1)
,('The Iliad', 'November 1998', 4, '0-14-027536-3', '', 704, 15.95, 3, 2, 2)
,('Chicka Chika Boom Boom', 'August 2000', 5, '0-689-83568-X', '', 32, 7.99, 3, 4, 3)

-- ------------------------------------------------------------------------------

insert into book_authors (auth_name)
values
('Brett Mclaughlin')
,('Elizabeth Kostova')
,('Buzz Bissinger')
,('Michael Mahemoff')
,('Eric Meyer')
,('Homer')
,('Bill Martin, Jr.')
,('John Archambault')

-- ------------------------------------------------------------------------------

insert into book_author_title (title_id, auth_id)
values
 (8, 1)
,(9, 2)
,(10, 3)
,(11, 4)
,(12, 5)
,(13, 6)
,(14, 7)