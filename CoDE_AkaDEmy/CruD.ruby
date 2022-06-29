movies = { MysteryMen: 9}
puts "Enter "
choice = gets.chomp

case choice
  when "add"
    print "title: "
    title = gets.chomp
    print "Rating: "
    rating = gets.chomp
    if movies[title.to_sym].nil?
      movies[title.to_sym] = rating.to_i
      puts movies
    else
      puts "bereits dort!"
    end
  when "update"
    print "title "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Es gibt keine"
    else
      print "Rating "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts movies
    end
  when "display"
    movies.each { |m, r| puts "#{m}: #{r}"}
  when "delete"
    print "title "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Es gibt keine"
    else
      movies.delete(title.to_sym)
    end
  else
    puts "Error!"
end


