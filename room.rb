class Room
  attr_reader :name
  attr_accessor :occupants, :songlist

  def initialize(name)
    @name = name
    @occupants = []
    @songlist = []
  end

  def add_guest(new_guest)
    @occupants << new_guest
  end

  def remove_guest(guest)
    @occupants.delete(guest)
  end

  def empty_room
    @occupants.clear()
  end

  def add_song(new_song)
    @songlist << new_song
  end

  def remove_song(song)
    @songlist.delete(song)
  end

  #add ability to empty songs
  #do songlist array to take songs from instead of individual song objects

end