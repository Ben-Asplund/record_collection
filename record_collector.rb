album_ratings = {
    :"The Grateful Dead - Wembley Empire Pool" => 5, 
    :"From Indian Lakes - Everything Feels Better Now" => 4,
    :"Chet Baker - Chet" => 4.3
}

wishlist = {
    :"Death Grips - Exmilitary" => 5
}

puts "What would you like to do?"

puts " -- Type 'add' to add a record."
puts " -- Type 'update' to update a record"
puts " -- Type 'display' to display all records"
puts " -- Type 'delete' to delete a record"
puts " -- Type 'wishlist' to add a "

choice = gets.chomp.downcase

case choice

when 'add'
    puts "What record to you want to add?"
    title = gets.chomp
        if album_ratings[title.to_sym] = rating.to_i
            puts "#{title} has been added with a rating of #{rating}"
        else 
            puts "That record already exists! Its rating is #{album_rating[title.to_sym]}."
        end
when 'update'
    puts "What record do you want to update?"
    title = gets.chomp
        if album_rating[title.to_sym].nil?
            puts "Record not found!"
        else 
            puts "What's the new rating? (Type a number 0 to 4.)"
                rating = gets.chomp
                album_rating[title.to_sym] = rating.to_i
                puts "#{title} has been updated with new rating of #{rating}"
        end
when 'delete'
    puts "What record do you want to delete?"
    title = gets.chomp
    if album_rating[title.to_sym].nil?
        puts "Record not found!"
    else   
        album_rating.delete(title.to_sym)
        puts "#{title} has been removed."
    end
when 'wishlist'
    puts "What record do you want on your wishlist?"
    title = gets.chomp
        if wishlist[title.to_sym] = rating.to_i  
            puts "#{title} has been added with a rating of #{rating}"
        else   
            puts "That record is already on your wishlist!"
        end
    else   
        puts "Exsqueeze me??"
    end
    