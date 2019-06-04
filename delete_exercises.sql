USE codeup_test_db;

select 'albums released after 1991' as '***info***';
delete from albums where release_date >= 1991;

select 'disco albums' as '***info***';
delete from albums where genre = 'disco';

select 'albums by whitney houston' as '***info***';
delete from albums where artist = 'Whiney Houston / various artists';