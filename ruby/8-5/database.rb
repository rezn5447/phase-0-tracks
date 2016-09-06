# REQUIRE GEMS
require 'sqlite3'
require 'faker'

# I REALIZE THAT ITS A BIT CLUNKY BUT WITH MORE TIME I WOULD DEFINITELY HAVE REFACTORED SOME THINGS =D

$db = SQLite3::Database.new("brain_game.db")
  def player_chk(db,name)
    db_chk = $db.execute("SELECT * FROM players WHERE player_name = '#{$name}'")
    if db_chk == []
      puts "Welcome new player #{$name}!"
      $db.execute("INSERT INTO players (player_name) VALUES (?)", [name])
    else
      puts "Welcome back #{name}!"   
    end
  end

  def get_id
    player_id = $db.execute("SELECT id FROM players WHERE player_name = '#{$name}'")
    player_id[0]
  end
  
  def save_score(pl_id,lvl,probs,finish_time)
    save = $db.execute("INSERT INTO players_scores (player_id,name,level,problems,score,finish_time) VALUES (?,?,?,?,?,?)",[pl_id,$name,lvl,probs,$score,finish_time])
  end
  
  def show_all_scores
    all_scores = $db.execute("SELECT * FROM players_scores")
    if all_scores == []
      puts "\n *********   Currently no scores on the database! Play a game first!   **********"
    else
      all_scores.each do |pid,name,lvl,probs,score,time|
        puts"\n"
        puts "#{name} : level: |#{lvl}| # of problems: |#{probs}| correct: |#{score}| finish time: |#{time}|"
      end
    end
    opt_strt_chk('options')
  end

  def my_scores
    mine = $db.execute("SELECT * FROM players_scores WHERE name = '#{$name}'")
    if mine == []
      puts "\n *********   Currently no scores on the database! Play a game first!   **********"
    else
      mine.each do |pid,name,lvl,probs,score,time|
        puts"\n"
        puts "#{name} : level: |#{lvl}| # of problems: |#{probs}| correct:|#{score}| finish time: |#{time}|"
      end
    end
    opt_strt_chk('options')
  end

  def reset_scores
    puts " ARE YOU SURE!? ( YES / NO )"
    input = gets.chomp
    until input == "YES" || input == "NO"
    puts "ALL CAPS!"
    end
    if input == "YES"
    $db.execute("DELETE FROM players_scores")
    $db.execute('VACUUM')
    puts "\n All Scores deleted!"
    opt_strt_chk('options')
    else
    p "OK! Scores still saved!"
    opt_strt_chk('options')
    end
  end

  def game_complete(lvl,probs,finish_time)
    id = get_id
    save_score(id,lvl,probs,finish_time)
  end


# fancy string delimiters

create_tbl_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS players(
  id INTEGER PRIMARY KEY,
  player_name VARCHAR(255)
  )
SQL

create_tbl_cmd2 = <<-SQL
  CREATE TABLE IF NOT EXISTS players_scores(
  player_id INT,
  name VARCHAR(255),
  level INT,
  problems INT,
  score INT,
  finish_time INT
  )
SQL



$db.execute(create_tbl_cmd)
$db.execute(create_tbl_cmd2)





 
