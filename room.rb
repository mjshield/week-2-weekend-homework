class Room
  attr_reader :name
  attr_accessor :occupants, :songlist

  def initialize(name)
    @name = name
    @occupants = []
    @songlist = []
  end

  def add_guest(new_guest)
    if @occupants.count < 3
      new_guest.money -= 10
      @occupants << new_guest
    else
      p "The #{@name} is full."
    end
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

  def empty_songs
    @songlist.clear()
  end



  #do songlist array to take songs from instead of individual song objects

end