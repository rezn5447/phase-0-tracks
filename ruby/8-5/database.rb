# REQUIRE GEMS
require 'sqlite3'
require 'faker'

# I REALIZE THAT ITS A BIT CLUNKY BUT WITH MORE TIME I WOULD DEFINITELY HAVE REFACTORED SOME THINGS =D

$db = SQLite3::Database.new("brain_game.db")

  def player_chk(db,name)
    db_chk = $db.execute("SELECT * FROM players WHERE player_name = '#{name}'")
    if db_chk == []
      puts "Welcome new player #{name}!"
      $db.execute("INSERT INTO players (player_name,num_of_games_played) VALUES (?,?)", [name,0])
    else
      puts "Welcome back #{name}!"   
    end
  end

  def get_id(name)
    player_id = $db.execute("SELECT id FROM players WHERE player_name = '#{name}'")
    player_id
  end
  
  def save_score(pl_id,lvl,probs,finish_time)
    save = $db.execute("INSERT INTO players_scores (player_id,level,problems,finish_time) VALUES (?,?,?,?)",[pl_id,lvl,probs,finish_time])
    save
  end
  
  def update_games_played(name)
    games_played = $db.execute("SELECT num_of_games_played FROM players WHERE player_name = '#{name}'")
    p games_played
   # update = games_played + 1
   # p update
   # $db.execute("UPDATE players SET num_of_games_played = '#{update}' WHERE player_name = '#{name}'")
   puts "You have played #{games_played} games now! CONGRATS!!"
  end

  def game_complete(lvl,name,probs,finish_time)
    update_games_played(name)
    save_score(get_id(name),lvl,probs,finish_time)
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


 