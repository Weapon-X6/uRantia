require_relative 'classes/animal2.rb'

#pig = Animal.new
pig = Animal.new({noise: 'useless'})
pig.noise = 'let'
puts pig.noise