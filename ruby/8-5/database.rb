# REQUIRE GEMS

require 'sqlite3'
require 'faker'




db = SQLite3::Database.new("brain_game.db")

# fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS players(
	id INTEGER PRIMARY KEY,
	player_name VARCHAR(255),
	num_of_games_played INT,
  )

  CREATE TABLE IF NOT EXISTS players_scores(
	player_id VARCHAR(255),
	level INT,
	score INT,
	comp_time INT,
  )
  
  CREATE TABLE IF NOT EXISTS high_scores(
  	player_id VARCHAR(255),
  	level INT,
  	comp_time INT, 
  )
SQL

db.execute(create_table_cmd)


 