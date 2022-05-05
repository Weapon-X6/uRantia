require_relative 'classes/animal2.rb'

#pig = Animal.new
pig = Animal.new({noise: 'useless'})
pig.noise = 'let'
puts pig.noise

puts "-" * 15

Animal.types.each do |type|
    puts type
end

# puts Animal.types.each {|type| type}

wilbur = Animal.create_a_pig
puts "#{wilbur.noise} / #{wilbur.color}"