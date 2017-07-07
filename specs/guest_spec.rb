require ('minitest/autorun')
require ('pry')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )
require_relative ('../guest.rb')

class TestGuest < Minitest::Test

  def setup
    @roger = Guest.new("Roger")
  end

  def test_get_name
    assert_equal("Roger", @roger.name)
  end






end