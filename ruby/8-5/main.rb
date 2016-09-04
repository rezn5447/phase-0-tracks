# MOVED GAME TO game.rb #
require_relative 'game'

# MOVED DATABASE COMMANDS TO database.rb # 
require_relative 'database'

# I HOPE IT WORKS AND IT IS FUN!! =D


  def user_interface(game_db)
	puts "Hey welcome to Resdan's Little Numbers Game, where you answer simple '+' '-' and '*' problems! The difficulty and number of problems are determined by you, and if you get all the answers right you might make it onto the leader board!"
	puts "\n put 'q' or 'quit' or 'exit' to come back later!"

  	puts "\n To start off, what should your player name be?"
  	name = gets.chomp
  	quit(name)
  	player_chk($db,name)
    puts "\n Type 'options' to go into the options menu or 'start' to begin a new game"
    input = gets.chomp
    opt_strt_chk(input)
  	puts "Here we go!: What level of difficulty? (1/2/3)"
  	lvl = gets.chomp
  	lvl = dif_chk1(lvl)
  	puts "How many problems? (10/15/20)"
  	probs = gets.chomp
  	probs = dif_chk2(probs)
  	game_start(lvl.to_i,probs.to_i,name)
  end


user_interface($db)