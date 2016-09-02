
# MOVED GAME TO game.rb #
require_relative 'game'

# MOVED DATABASE COMMANDS TO database.rb # 
require_relative 'database'



database = []
  def user_interface(database)
  	puts "here we go!: what Level? (1/2/3)"
  	input1 = gets.chomp!
  	database << input1
  	puts "how many problems? (10/20/30)"
  	input2 = gets.chomp!
  	database << input2

  	difficulty(input1.to_i,input2.to_i)	
  end





user_interface(database)