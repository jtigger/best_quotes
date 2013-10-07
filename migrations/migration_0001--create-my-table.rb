require "sqlite3"
database_filename = "db/test.db"

puts "#{__FILE__} (migrating up)..."
conn = SQLite3::Database.new database_filename
conn.execute_batch <<__
drop table if exists my_table;
create table my_table (
  id     INTEGER PRIMARY KEY,
  posted INTEGER,
  title  VARCHAR(30),
  body   VARCHAR(32000)
);
__
