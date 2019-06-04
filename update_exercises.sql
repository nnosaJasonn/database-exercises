USE codeup_test_db;

select 'altered albums' as '***updated_info***';
update albums
set sales = sales * 10;
select * from albums;


select 'sales to 1800s' as '***updated_info***';
update albums
set release_date = release_date - 100;
select * from albums where release_date < 1880;



select 'peter jackson albums' as '***info***';
update albums
set artist = 'peter jackson' where artist = 'michael jackson';
select * from albums where artist = 'peter jackson';
