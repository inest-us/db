CREATE TABLE plsql101_purchase (
    product_name VARCHAR2(25) NOT NULL,
    product_price NUMBER(4, 2) NOT NULL,
    purchase_date DATE
);

INSERT INTO plsql101_purchase VALUES('Product Name 1', 1, '5-NOV-03');
INSERT INTO plsql101_purchase VALUES('Product Name 2', 2.5, '29-JUN-04');
INSERT INTO plsql101_purchase VALUES('Product Name 3', 50.75, '10-DEC-05');
INSERT INTO plsql101_purchase VALUES('Product Name 4', 99.99, '31-AUG-06');

SET SCAN OFF
INSERT INTO plsql101_purchase VALUES('Fifth Product''s Name', 25, '05-MAY-06');
SET SCAN ON