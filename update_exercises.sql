USE codeup_test_db;

select *  from albums;
update albums
set sales = sales * 10;
select * from albums;


select * from albums where release_date < 1980;
update albums
set release_date = release_date - 100
where release_date < 1980;
select * from albums where release_date < 1880;



select * from albums where artist = 'michael jackson';
update albums
set artist = 'peter jackson' where artist = 'michael jackson';
select * from albums where artist = 'peter jackson';
