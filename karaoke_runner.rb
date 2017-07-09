require_relative('./guest')
require_relative('./room')
require_relative('./song')


@redroom = Room.new("Red Room")

# guest2 = Guest.new("Carol", 800)
# guest3 = Guest.new("Rein", 300)
# guest4 = Guest.new("Jack", 100)

sadsong = Song.new("Sad Song")
clubsong = Song.new("Club Song")
rocksong = Song.new("Rock Song")
jazzsong = Song.new("Jazz Song")

#setup dialogue, there's probably a smaller way to write this out
puts "Welcome to the Karaoke booking app, please input the name of the first guest attending:"
guest_name = gets.chomp.to_s
puts "Thank you, now please input the amount of cash you wish to turn into Karaoke Bux (KB) tonight:"
guest_money = gets.chomp.to_i
guest1 = Guest.new(guest_name, guest_money)
puts "To confirm, the first guest is #{guest1.name} with #{guest1.money} KB."

puts "Please enter the name of the second guest:"
guest_name = gets.chomp.to_s
puts "Please enter desired monetary conversion to KB."
guest_money = gets.chomp.to_i
guest2 = Guest.new(guest_name, guest_money)
puts "To confirm, the second guest is #{guest2.name} with #{guest2.money} KB."

puts "Please enter the name of the third guest:"
guest_name = gets.chomp.to_s
puts "Please enter desired monetary conversion to KB."
guest_money = gets.chomp.to_i
guest3 = Guest.new(guest_name, guest_money)
puts "To confirm, the third guest is #{guest3.name} with #{guest3.money} KB."

puts "Please enter the name of the fourth guest:"
guest_name = gets.chomp.to_s
puts "Please enter desired monetary conversion to KB."
guest_money = gets.chomp.to_i
guest4 = Guest.new(guest_name, guest_money)
puts "To confirm, the fourth guest is #{guest4.name} with #{guest4.money} KB."

puts "----- GUESTS ACCEPTED -----"
puts "----- ATTEMPTS TO SKIP QUEUE WILL BE MET WITH LETHAL FORCE -----"

puts "The following options are now available:

add = add guest to a room
remove = remove guest from a room
addsong = add song to a room's playlist
removesong = remove song from a room's playlist"
input = gets.chomp

