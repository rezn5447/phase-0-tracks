# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

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
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

## PRIVATE METHODS SO NOTHING OUTSIDE OF THE CLASS CAN ACCESS THEM ##
  private

## THIS METHOD PREDICTS THE AMOUNT OF DEATHS IN A STATE BASED ON POP. DENSITY. IT USES IF / ELSIF / ELSE STATEMENT WITH POP. DENSITY TO MULTIPLY POPULATION BY A DECIMAL. THEN USES .FLOOR TO ROUND TO NEAREST WHOLE PERSON ##

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

## THIS METHOD PREDICTS THE SPEED OF SPREAD AGAIN USING POP. DENSITY. IT SETS SPEED TO 0.0. AND THEN SETS SPEED TO A VALUE BASED ON POP. DENSITY. USES IF/ ELSIF / ELSE STATEMENT WITH POP. DENSITY TO SET SPEED. THE OUTPUT IS A PUTS STATEMENT THAT INCLUDES THE ASSIGNED VALUE FOR SPEED. SPEED IS IN MONTHS. TWO LINES SEPARATED AFTER SENTENCE ##

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section