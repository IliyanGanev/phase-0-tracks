 #Virus Predictor

# I worked on this challenge [by myself, with: Leonard Dain].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Requre relative tells the file to refer to another file within the same directory if no path is specified.
#
require_relative 'state_data'

class VirusPredictor
#Initializes new instances and sets the instant variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 
#Calls predicted_deaths and speed_of_spread methods.
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak puts and will spread across the state in #{speed_of_spread} months."
  end

  private
  #private limits the scope of the methods beneath to be accessible within the class only. 
  #if we move it above virus effects ,the method becomes unaccessible outside the class.

#This method calculates predicted deaths based on population and population density.

  def predicted_deaths
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

  end
 
#Calculates speed of spread based on population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

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

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |state_name, population_info| 
state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
state.virus_effects

end


#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
#One uses strings as keys. The other symbols as keys.The difference is that symbols possess immutability and uniqueness.

#What are some ways to iterate through a hash?
#One way is to use each. Another way is to use map if we want to modify some values.

#When refactoring virus_effects, what stood out to you about the variables, if anything?
#What stood out is that instance variables are available anywhere within the class.

#What concept did you most solidify in this challenge?
#I solidified the concepts of scope of instance variables and private methods as well as when require and require_relative are used. 