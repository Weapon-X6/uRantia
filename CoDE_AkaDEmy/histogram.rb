# aus gestern 22. Juni 22
puts "input"
text = gets.chomp

words = text.split
frequencies = Hash.new(0)

words.each { |w| frequencies[w] += 1 }

frequencies = frequencies.sort_by { |color, count| 
  count
}

frequencies.reverse!

frequencies.each { |k, v|
  puts k + " " + v.to_s
}
