cart = ['apple', 'bananas', 'carrot']

unless cart.empty?
    puts "The first item is: #{cart[0]}"
else
    puts "The cart is empty"
end

if !cart.empty?
    puts "if "
else
    puts "else"
end

cart.each do |c|
    puts c
end