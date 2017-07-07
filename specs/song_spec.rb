require ('minitest/autorun')
require ('pry')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )
require_relative ('../song.rb')

class TestSong < Minitest::Test

  def setup
    @sadsong = Song.new("Sad Song")
  end

  def test_get_title
    assert_equal("Sad Song", @sadsong.title)
  end
end