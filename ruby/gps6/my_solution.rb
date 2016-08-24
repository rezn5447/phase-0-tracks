# Virus Predictor

# I worked on this challenge [by myself, with: Adian Legaspi].
# We spent [2.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
## THE CLASS INTIALZIING AND TAKING VARIABLES FROM THE STATE DATA AND ASSIGNING THEM TO INSTANCE VARIABLES

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

## THIS METHOD IS USING INSTANCE VARIABLES TO PREDICT HOW MANY PEOPLE WOULD DIE, AND HOW FAST. THE OUTPUT WOULD BE THE SPEED OF SPREAD BECAUSE IT IS THE LAST LINE OF THE METHOD.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

## PRIVATE METHODS SO NOTHING OUTSIDE OF THE CLASS CAN ACCESS THEM ##
  private

## THIS METHOD PREDICTS THE AMOUNT OF DEATHS IN A STATE BASED ON POP. DENSITY. IT USES IF / ELSIF / ELSE STATEMENT WITH POP. DENSITY TO MULTIPLY POPULATION BY A DECIMAL. THEN USES .FLOOR TO ROUND TO NEAREST WHOLE PERSON ##

  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = case @population_density
      when 151...200 then (@population * 0.3).floor
      when 101...150 then (@population * 0.2).floor
      when 51...100 then (@population * 0.1).floor
      when 0...50 then (@population * 0.05).floor
      else (@population * 0.4).floor
    end 

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

## THIS METHOD PREDICTS THE SPEED OF SPREAD AGAIN USING POP. DENSITY. IT SETS SPEED TO 0.0. AND THEN SETS SPEED TO A VALUE BASED ON POP. DENSITY. USES IF/ ELSIF / ELSE STATEMENT WITH POP. DENSITY TO SET SPEED. THE OUTPUT IS A PUTS STATEMENT THAT INCLUDES THE ASSIGNED VALUE FOR SPEED. SPEED IS IN MONTHS. TWO LINES SEPARATED AFTER SENTENCE ##

  def speed_of_spread 
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = case @population_density
      when 151...200 then 1.0
      when 101...150 then 1.5
      when 51...100 then 2.0
      when 0...50 then 2.5
      else 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |key,value|
 # puts "#{key} and #{value[:population_density]}"
  key = VirusPredictor.new(key, value[:population_density], value[:population])
  key.virus_effects
end



#=======================================================================
# Reflection Section


# => What are the differences between the two different hash syntaxes shown in the state_data file?

## The state name is written as a string instead of a symbol. It is probably written as a string because state names have spaces and symbols cannot have spaces. Compared to the population density and population symbols. I think they stay as symbols because they are written over and over for each state and maybe that saves on memory somewhere in the program. 




# => What does require_relative do? How is it different from require?

## require_relative looks for a file relative to the filepath that it is in. For example, if you have two files in the same folder you only need to write the name of the 2nd file with require_relative. It differs from require because require asks for methods that are inside ruby itself.




# => What are some ways to iterate through a hash?

## Some ways to iterate through a hash include .each , .each_key , and .each_value




# => When refactoring virus_effects, what stood out to you about the variables, if anything?

## That the private methods could be accessed and did not need to have variables passed into them because the class variables can be accessed anywhere inside the class itself.




# => What concept did you most solidify in this challenge?

## I think that using case to get rid of all those if /elsif statements was pretty interesting. I'm becoming more comfortable using it now. Same goes for iterating through a hash using .each and creating a new class instance with it. 







