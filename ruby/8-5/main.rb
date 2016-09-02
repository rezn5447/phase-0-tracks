# REQUIRE GEMS

require 'sqlite3'
require 'faker'




db = SQLite3::Database.new("players.db")

  def calculate(operant)
	correct = 0
	num1 = rand(10)
	num2 = rand(10)
	if operant == '*'
	  prob = "#{num1} * #{num2}"
	  ans = num1 * num2
	elsif operant == '-'
	  prob = "#{num1} - #{num2}"
	  ans = num1 - num2
	else operant == '+'
	  prob = "#{num1} + #{num2}"
	  ans = num1 + num2
	end
	p prob
	p ans
  end
  


  def difficulty(level,problems)
  	i = 0
  	while i <= problems
  	oper = (rand(level) + 1)
  	  if oper >= 3
 	   calculate('*')
	  elsif oper == 2
		calculate('-')
	  else
		calculate('+')
	  end	
		i += 1
    end
  end
  