/*
// Original Chore Object Format
{
  short_desc: item.short_desc, // STR: Short description of the chore
  long_desc: item.long_desc, // STR: Long description of the chore
  morning: false, // BOOL: This chore happens every morning
  night: false, // BOOL: This chore happens every night
  dwm: 'd', // CHAR: This chore happens daily, weekly, or monthly (exclusive)
  day: -1, // INT: Which day of the week this chore lands on (if weekly)
  date: -1 // INT: Which date of the month this chore lands on (if monthly)
}
*/
CREATE TABLE chores (
    chore_id int not null auto_increment,
    short_desc varchar(255) not null,
    long_desc text not null,
    morning boolean not null default false,
    night boolean not null default false,
    dwm char not null,
    day int not null default -1,
    date int not null default -1,
    m_time timestamp default now() on update now(),
    c_time timestamp default '0000-00-00 00:00:00',
    PRIMARY KEY (chore_id)
);
CREATE TABLE tasks (
    task_id int not null auto_increment,
    chore_id int not null,
    done boolean default false,
    done_by varchar(255),
    m_time timestamp default now() on update now(),
    c_time timestamp default '0000-00-00 00:00:00',
    PRIMARY KEY (task_id),
    FOREIGN KEY (chore_id) REFERENCES chores(chore_id)
);
