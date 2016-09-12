# scenario.rb

require './person'
require './bar'
require './bartender'

##############################################################
#                    Ruby walks into a bar                   #
##############################################################

# let's set up the stage:
ruby = Person.new("Ruby")
bar = Bar.new("The White Horse Tavern")
dylan = Bartender.new("Dylan Thomas")
bar.bartender = dylan

# Aaannnd.... Action!
ruby.enter(bar)

# Let's say hi
bar.bartender.greet(ruby)
ruby.greet(bar.bartender)

# Order the first drink
ruby.order_drink!
ruby.drink!

# Ah well, let's keep her topped up..
until ruby.drunk?
  ruby.order_drink!
  ruby.drink!
end

# Let's see if Ruby can order more when she's already drunk?
ruby.say "Can haz one moar? *hic*"
ruby.order_drink!

# Ok, time to go home
ruby.leave
ruby.go_home

puts "\n\nThe END"
