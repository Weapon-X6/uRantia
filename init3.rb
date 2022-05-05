require_relative 'classes/animal2.rb'

#pig = Animal.new
pig = Animal.new({noise: 'useless'})
pig.noise = 'let'
puts pig.noise

puts "-" * 15

Animal.species.each do |type|
    puts type
end



wilbur = Animal.create_a_pig
puts "#{wilbur.noise} / #{wilbur.color}"
puts Animal.total_animals

puts "-" * 15
Animal.species = ['gatillos', 'conejos', 'hares']
puts Animal.species.each {|type| type}