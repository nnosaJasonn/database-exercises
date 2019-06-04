USE codeup_test_db;
select 'pink floyd albums:' as '***Info***';
select * from albums where artist = 'pink floyd';

select release_date as 'year sgt peppers lonely hearts club band was published:'
from albums where name = 'sgt. pepper''s lonely hearts club band';

select genre as 'genre for nevermind:'
from albums where name = 'nevermind';

select name as 'albums released in 90s:'
from albums where release_date between 1990 AND 1999;

select name, artist, sales as 'albums with less than 20 million cert sales:'
from albums where sales <= 20;

select name, artist, release_date as 'albums where genre is rock:'
from albums where genre like '%rock%';