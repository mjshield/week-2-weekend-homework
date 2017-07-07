require ('minitest/autorun')
require ('pry')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )
require_relative ('../room.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')

class TestRoom < Minitest::Test

  def setup
    @redroom = Room.new("Red Room")

    @guest1 = Guest.new("Sam")
    @guest2 = Guest.new("Carol")
    @guest3 = Guest.new("Rein")

    @sadsong = Song.new("Sad Song")
    @clubsong = Song.new("Club Song")
    @rocksong = Song.new("Rock Song")
  end

  def test_get_name
    assert_equal("Red Room", @redroom.name)
  end

  def test_room_starts_empty
    assert_equal(0, @redroom.occupants.count)
  end

  def test_add_guest
    @redroom.add_guest(@guest1)
    assert_equal(1, @redroom.occupants.count)
  end

  def test_add_two_guests
    @redroom.add_guest(@guest1)
    @redroom.add_guest(@guest2)
    assert_equal(2, @redroom.occupants.count)
  end

  def test_remove_guest
    @redroom.add_guest(@guest1)
    @redroom.add_guest(@guest2)
    @redroom.remove_guest(@guest1)
    assert_equal(1, @redroom.occupants.count)
  end

  def test_empty_room
    @redroom.add_guest(@guest1)
    @redroom.add_guest(@guest2)
    @redroom.add_guest(@guest3)
    @redroom.empty_room()
    assert_equal(0, @redroom.occupants.count)
  end

  def test_empty_songlist
    assert_equal(0, @redroom.songlist.count)
  end

  def test_add_song
    @redroom.add_song(@rocksong)
    assert_equal(1, @redroom.songlist.count)
  end

  def test_add_two_songs
    @redroom.add_song(@clubsong)
    @redroom.add_song(@rocksong)
    assert_equal(2, @redroom.songlist.count)
  end

  def test_remove_song
    @redroom.add_song(@clubsong)
    @redroom.add_song(@rocksong)
    @redroom.remove_song(@clubsong)
    assert_equal(1, @redroom.songlist.count)
  end

end