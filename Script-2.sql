-- 7월 2일
CREATE TABLE book(
    book_id     NUMBER(5),
    title       varchar2(50),
    author      varchar2(10),
    pub_date    date    
    );

SELECT * FROM book;

DROP TABLE book;

CREATE TABLE book(
    book_id     NUMBER(5),
    title       varchar2(50),
    author      varchar2(10),
    pub_date    date    
    );

DROP TABLE author;
CREATE TABLE author(
    author_id        NUMBER(10),
    author_name      varchar2(100),
    author_desc      varchar2(500)
);

CREATE TABLE author (
 author_id       NUMBER(10),
 author_name     VARCHAR2(100)       NOT NULL,
 author_desc     VARCHAR2(500),
 PRIMARY KEY(author_id)
 );


CREATE TABLE book(
    book_id     NUMBER(10),
    title       varchar2(100) NOT NULL,
    pubs        varchar2(100),
    pub_date    DATE,
    author_id number(10),
    PRIMARY key(book_id),
    CONSTRAINT c_book_fk FOREIGN KEY (author_id)
    REFERENCES author(author_id)
);

INSERT INTO author(author_id, author_name)
VALUES(2, '이문열');

SELECT * FROM author;

UPDATE AUTHOR
SET author_name = '기안84',
    author_desc = '웹툰작가'
WHERE author_id = 1;

SELECT * FROM author;

-- 7월 3일

INSERT INTO AUTHOR(author_id, author_name, AUTHOR_DESC)
values(1, '박경리', '토지 작가')

SELECT * FROM author

UPDATE author
SET author_name = '기안84',
    author_desc = '웹툰작가, 태어난 김에 세계일주'
WHERE author_id = 1;

SELECT * FROM author

DELETE FROM author; -- 조건이 없으면 모든데이터 삭제

INSERT INTO AUTHOR(author_id, author_name, AUTHOR_DESC)
values(1, '박경리', '토지 작가')

insert INTO author(author_id, author_name, author_desc)
values(2, '기안84', '웹툰작가, 태어난 김에 세계일주')

SELECT * FROM author

DELETE FROM author
WHERE author_id = 1;

SELECT * FROM author

create SEQUENCE seq_author_id
INCREMENT BY 1
START WITH 1;

SELECT seq_author_id.nextval FROM dual; -- 늘어남
SELECT seq_author_id.currval FROM dual; -- 조회

-- 숫자 감소는 없음 drop 후 다시 생성해야 함
DROP SEQUENCE seq_author_id;

create SEQUENCE seq_author_id
INCREMENT BY 1
START WITH 1;

SELECT seq_author_id.nextval FROM dual; -- 늘어남
SELECT seq_author_id.currval FROM dual; -- 조회

Delete FROM author;

INSERT INTO AUTHOR
VALUES(seq_author_id.nextval, '박경리', '토지작가');

INSERT INTO AUTHOR
VALUES(seq_author_id.nextval, '이문열', '삼국지작가');

SELECT * FROM author;

INSERT INTO board
values(1, '게시판제목', '본문내용', 'sysdate');

---
DELETE FROM author;

INSERT INTO AUTHOR
VALUES(seq_author_id.nextval, '이문열', '경북 영양');
INSERT INTO AUTHOR
VALUES(seq_author_id.nextval, '박경리', '경상남도 통영');
INSERT INTO AUTHOR
VALUES(seq_author_id.nextval, '유시민', '17대 국회의원');
INSERT INTO AUTHOR
VALUES(seq_author_id.nextval, '기안84', '기안동에서 산 84년생');
INSERT INTO AUTHOR
VALUES(seq_author_id.nextval, '강풀', '온라인 만화가 1세대');
INSERT INTO AUTHOR
VALUES(seq_author_id.nextval, '김영하', '알쓸신잡');

SELECT * FROM author

--

select * FROM book

DELETE FROM book;
DROP SEQUENCE seq_book_id;

create SEQUENCE seq_book_id
INCREMENT BY 1
START WITH 1;

INSERT INTO book
VALUES(seq_book_id.nextval, '우리들의 일그러진 영웅', '다림', TO_CHAR(to_date('1998-02-22', 'YYYY-MM-DD'), 'YYYY-MM-DD'), 1);

INSERT INTO book
VALUES(seq_book_id.nextval, '삼국지', '민음사', TO_CHAR(TO_DATE('2002-03-01', 'YYYY-MM-DD'), 'YYYY-MM-DD'), 1);

INSERT INTO book
VALUES(seq_book_id.nextval, '토지', '마로니에북스', TO_CHAR(TO_DATE('2012-08-15', 'YYYY-MM-DD'), 'YYYY-MM-DD'), 2);

INSERT INTO book
VALUES(seq_book_id.nextval, '유시민의 글쓰기 특강', '생각의 길', TO_CHAR(TO_DATE('2015-04-01', 'YYYY-MM-DD'), 'YYYY-MM-DD'), 3);

INSERT INTO book
VALUES(seq_book_id.nextval, '패션왕', '중앙북스(books)', TO_CHAR(TO_DATE('2012-02-22', 'YYYY-MM-DD'), 'YYYY-MM-DD'), 4);

INSERT INTO book
VALUES(seq_book_id.nextval, '순정만화', '재미주의', TO_CHAR(TO_DATE('2011-08-03', 'YYYY-MM-DD'), 'YYYY-MM-DD'), 5);

INSERT INTO book
VALUES(seq_book_id.nextval, '오직두사람', '문학동네', TO_CHAR(TO_DATE('2017-05-04', 'YYYY-MM-DD'), 'YYYY-MM-DD'), 6);

INSERT INTO book
VALUES(seq_book_id.nextval, '26년', '재미주의', TO_CHAR(TO_DATE('2012-02-04', 'YYYY-MM-DD'), 'YYYY-MM-DD'), 5);


SELECT b.book_id, b.TITLE, b.PUBS, to_char(b.PUB_DATE, 'YYYY-MM-DD'), a.AUTHOR_ID, a.AUTHOR_NAME , a.AUTHOR_DESC -- 조회할 때 to_char 해줘야 함.
FROM book b, AUTHOR a
WHERE b.AUTHOR_ID = a.AUTHOR_ID
ORDER by 1

---
SELECT TO_CHAR(to_date('1998-02-22', 'YYYY-MM-DD'), 'YYYY-MM-DD') FROM dual;

SELECT '1998-02-22' FROM dual;

SELECT to_date('1998-02-22') FROM dual;

---

