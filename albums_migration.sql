Use codeup_test_db;
drop table if exists albums;

create table albums (
  id int unsigned not null auto_increment,
  artist varchar(255) not null,
  name varchar(255) not null,
  release_date year not null,
  sales int unsigned not null,
  genre varchar(255) not null,
  primary key (id)
);