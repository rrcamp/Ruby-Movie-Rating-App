movies = {
    Casablanca: 5,
    Casino Royale: 5,
    Skyfall: 5,
    The Dark Knight: 5,
    The Shawshank Redemption: 5,
    Resevoir Dogs: 5,
    The Prestige: 5,
    North By Northwest: 4,
    Up: 4,
    Blade Runner; 4,
    Before Sunrise: 4,
    Roman Holiday: 4,

}

puts "What would you like to do?"

choice = gets.chomp


case choice

when "add"
    puts "What movie would you like to add?"
    name = gets.chomp
    title = name.capitalize!
    puts "What rating would you like to give this movie?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    if movies[title.to_sym].nil?
        puts "#{title} was successfully added with a rating of #{rating}/5!"
    else puts "Oops, #{title} already exists, so it wasn't added."
    end

when "update"
    puts "What movie would you like to update?"
    name = gets.chomp
    if movies[title].nil?
        puts "Sorry, it doesn't look like #{title} has been added to the collection yet."
    else
        puts "What rating do you want to give #{title}?"
        rating = gets.chomp
        title = name.capitalize!
        movies[title.to_symb] = rating.to_i
    end

when "display"
    movies.each do
        puts "#{title}: #{rating}"
    end

when "delete"
    puts "What movie do you want to delete?"
    name = gets.chomp
    title = name.capitalize!
    if movies[title].nil?
        puts "Good news, #{title} isn't in your collection anyways."
    else
        movies.delete(title)
    end
else
    puts "Sorry, I didn't understand you! I can add, delete,display, and update - try one of those commands"
end
