# REQUIRE GEMS
require 'sqlite3'
require 'faker'



$db = SQLite3::Database.new("brain_game.db")

  def player_chk(db,name)
    db_chk = $db.execute("SELECT * FROM players WHERE player_name = '#{name}'")
    if db_chk == []
      puts "Welcome new player #{name}!"
     # $db.execute("INSERT INTO players(id,player_name,num_of_games_played")
    else
      puts "Welcome back #{name}!"   
    end
  end







# fancy string delimiters

create_tbl_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS players(
  id INTEGER PRIMARY KEY,
  player_name VARCHAR(255),
  num_of_games_played INT
  )
SQL

create_tbl_cmd2 = <<-SQL
  CREATE TABLE IF NOT EXISTS players_scores(
  player_id INT,
  level INT,
  problems INT,
  finish_time INT
  )
SQL


create_tbl_cmd3 = <<-SQL
  CREATE TABLE IF NOT EXISTS high_scores(
  player_id,
  name INT,
  level INT,
  problems INT,
  finish_time INT
  )
SQL




$db.execute(create_tbl_cmd)
$db.execute(create_tbl_cmd2)
$db.execute(create_tbl_cmd3)





# need to start making tables and adding values to themmmm

## ALMOST DONE WITH SILLY PROJECT ## 


 