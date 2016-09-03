# MOVED GAME TO game.rb #
require_relative 'game'

# MOVED DATABASE COMMANDS TO database.rb # 
require_relative 'database'


  def user_interface(game_db)
	puts "Hey welcome to Resdan's Little Numbers Game, where you answer simple '+' '-' and '*' problems! The difficulty and number of problems are determined by you, and if you get all the answers right you might make it onto the leader board!"
	puts "\n put 'q' or 'quit' or 'exit' to come back later!"
  	puts "\n To start off, what should be your player name?"
  	input = gets.chomp
  	quit(input)
  	player_chk($db,input)
  	puts "Here we go!: What level of difficulty? (1/2/3)"
  	input1 = gets.chomp
  	dif_chk(input1)
  	puts "How many problems? (10/15/20)"
  	input2 = gets.chomp
  	dif_chk(input2)
  	difficulty(dif_chk(input1).to_i,dif_chk(input2).to_i)	
  end


user_interface($db)