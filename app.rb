require "./movie_practice.rb"

puts "What would you like to do? "
puts "Type 'add' to add a movie."
puts "Type 'update' to update a movie."
puts "Type 'display' to display all movies."
puts "Type 'delete' to delete a movie."

m = MoviePractice.new
choice = gets.chomp

case choice
when "add"
  puts "What movie did you watch?"
  title= gets.chomp

  puts "What rating do you give?"
  rating = gets.chomp

  if m.add(title, rating)
    puts "Nice! You've added #{title} with #{rating} out of 5 stars!"
  else
    puts "That movie already exists! It's rating is #{title}"
  end

when "update"
  puts "Which movie would you like to update?"
  m.update(gets.chomp)

when "display"
  m.movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
end

when "delete"
  puts "Which movie do you want to delete?"
  delete(gets.chomp.to_sym)

else
  puts "Type in add, update, display or delete!"
end
