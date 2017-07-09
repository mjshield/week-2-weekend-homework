require_relative('./guest')
require_relative('./room')
require_relative('./song')


@redroom = Room.new("Red Room")

# guest2 = Guest.new("Carol", 800)
# guest3 = Guest.new("Rein", 300)
# guest4 = Guest.new("Jack", 100)

# sadsong = Song.new("Sad Song")
# clubsong = Song.new("Club Song")
# rocksong = Song.new("Rock Song")
# jazzsong = Song.new("Jazz Song")


puts "Welcome to the Karaoke booking app, please input the name of the first guest attending:"
guest_name = gets.chomp.to_s
puts "Thank you, now please input the amount of cash you wish to turn into Karaoke Bux (KB) tonight:"
guest_money = gets.chomp.to_i
guest1 = Guest.new(guest_name, guest_money)
puts "To confirm, the first guest is #{guest1.name} with #{guest1.money} KB."

