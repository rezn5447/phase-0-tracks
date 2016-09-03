# MOVED GAME TO game.rb #
require_relative 'game'

# MOVED DATABASE COMMANDS TO database.rb # 
require_relative 'database'

gdb = []
  def user_interface(game_db)
	puts "Hey welcome to Resdan's little numbers game, where you answer simple '+' '-' and '*' problems! The difficulty and number of problems are determined by you, and if you get all the answers right you might make it on the leader board!"
  	puts "To start off, what should be your player name?"
  	input = gets.chomp
  	game_db << input
  	puts "here we go!: what Level? (1/2/3)"
  	input1 = gets.chomp!
  	game_db << input1
  	puts "how many problems? (10/20/30)"
  	input2 = gets.chomp!
  	game_db << input2

  	difficulty(input1.to_i,input2.to_i)	
  end


user_interface(gdb)