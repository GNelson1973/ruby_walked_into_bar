# usage: dylan = Bartender.new("Dylan Thomas")
require './person'
require './beer'

class Bartender < Person
  attr_reader :name
  
  
  def initialize(name)
    @name = name
  end

  def serve(person)
    if person.drunk?
      say "No more for you!"
      return
    end
    
    say "Here you go #{person.name}!"
    person.drinks << Beer.new
  end

end