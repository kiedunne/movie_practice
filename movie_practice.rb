class MoviePractice
  attr_reader :movies

  def initialize
    @movies = {
      Scott_Pilgrim: 5,
      Gone_wind: 5,
      Volver:  4,
      It_Follows: 4
    }
  end

  def add(title, rating)
    if @movies[title.to_sym].nil?
      @movies[title.to_sym] = rating.to_i
    end
  end

  def update(title)
    if @movies[title.to_sym].nil?
      puts "Movie not found!"
    else puts "What rating would you like to give #{title}?"
      rating = gets.chomp
      @movies[title.to_sym] = rating.to_i
      puts "Nice! You've given #{title} a rating of #{@movies[title.to_sym]} out of 5 stars!"
    end
  end

  def delete(title)
    if @movies[title.to_sym].nil?
      puts "Movie not found!"
    else @movies.delete(title)
      puts "#{title} deleted!"
    end
  end
end
