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
CREATE TABLE users (
    username varchar(255) not null,
    password blob not null,
    PRIMARY KEY (username)
);
