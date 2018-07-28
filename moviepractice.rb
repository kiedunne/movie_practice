movies = {
  Scott_Pilgrim: 5,
  Gone_wind: 5,
  Volver:  4,
  It_Follows: 4,
}
puts "What would you like to do? "
puts "Type 'add' to add a movie."
puts "Type 'update' to update a movie."
puts "Type 'display' to display all movies."
puts "Type 'delete' to delete a movie."

choice = gets.chomp

case choice
when "add"
  puts "What movie did you watch?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What rating do you give?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "Nice! You've added #{title} with #{movies[title.to_sym]} out of 5 stars!"
  else puts "That movie already exists! It's rating is #{movies[title.to_sym]}"
  end

when "update"
  puts "Which movie would you like to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else puts "What rating would you like to give #{title}?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "Nice! You've given #{title} a rating of #{movies[title.to_sym]} out of 5 stars!"
  end

when "display"
  movies.each do |movies, ratings|
  puts "#{movies}: #{ratings}"
end

when "delete"
  puts "Which movie do you want to delete?"
  title = gets.chomp.to_sym
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else movies.delete(title)
    puts "#{title} deleted!"
end
else
  puts "Type in add, update, display or delete!"
end
