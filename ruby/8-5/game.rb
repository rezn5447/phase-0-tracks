# Should figure out how to make score not a global variable....
  $score = 0 
  def quit(input)
  	if input == 'quit' || input == 'q' || input == 'exit'
  	  abort("Come back soon!")
    end
  end

  def dif_chk1(num)
	until num == "1" || num == "2" || num == "3"
  	  puts "Read the rules! use (1 or 2 or 3) for level!"
  	  num = gets.chomp
  	end
  	num
  end

  def dif_chk2(num2)
	until num2 == "10" || num2 == "15" || num2 == "20" 
  	  puts "Read the rules! use (10 or 15 or 20) for the number of problems you will complete!"
  	  num2 = gets.chomp
  	end
  	num2
  end

  def correct_chk(ans,prob)
	p prob
	user_ans = gets.chomp
	quit(user_ans)
	if ans.to_s == user_ans
	  $score += 1
	else 
	  $score += 0
	end
	p $score
  end

# OPTIONS TO RESET SCORES AND CHECK SCORES BY USER NAME
  def opt_strt_chk(input)
    until input == 'options' || input == 'start'
      puts "\n Type 'options' to go into the options menu or 'start' to begin a new game"
      input = gets.chomp
    end
      if input == 'options'
        options
      else
    end
  end

  def options()
    puts "\n Welcome to the options menu!"
    puts "\n Here you can see all the scores, see all scores by you, and reset the scores!"
    puts "\n put 'myscores' to see personal scores"
    puts "\n put 'allscores' to see personal scores"
    puts "\n put 'reset' to see reset scores"
    puts "or 'start' to start the game"
    opt = gets.chomp
    quit(opt)
    opt_strt_chk(opt)
    until opt == 'myscores' || opt == 'allscores' || opt == 'reset'
      puts "Invalid input, Try Again!"
      opt = gets.chomp
    end
    if opt == 'myscores'
      #my_scores
    elsif opt == 'allscores'
      show_all_scores
    elsif opt == 'reset'
      reset_scores
    end 
  end

# JUST RANDOM NUMBERS GENERATED AND ADDED, SUBTRACTED, OR MULTIPLIED TOGETHER =)

  def calculation(operant)
	num1 = rand(10)
	num2 = rand(10)
	if operant == '*'
	  prob = "#{num1} * #{num2}"
	  ans = num1 * num2
	  correct_chk(ans,prob)
	elsif operant == '-'
	  prob = "#{num1} - #{num2}"
	  ans = num1 - num2
	  correct_chk(ans,prob)
	else operant == '+'
	  prob = "#{num1} + #{num2}"
	  ans = num1 + num2
	  correct_chk(ans,prob)
	end
  end

  def game_start(level,problems,player_name)
    start_time = Time.now
  	i = 0
  	while i < problems
  	oper = (rand(level) + 1)
  	  if oper >= 3
 	   calculation('*')
	  elsif oper == 2
		calculation('-')
	  else
		calculation('+')
	  end	
		i += 1
    end
    end_time = Time.now
    finish_time = end_time - start_time
    game_over(level,problems,player_name,finish_time.floor)
  end

  def game_over(lvl,problems,name,finish_time)
  	puts "\n GAME OVER!!! \n"
    puts "You got #{$score} out of #{problems} correct!\n"
    puts "It took you #{finish_time} seconds to finish!\n"
    puts "GREAT JOB #{name}"
  	game_complete(lvl,name,problems,finish_time)	
  end
