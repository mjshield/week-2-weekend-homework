require ('minitest/autorun')
require ('pry')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )
require_relative ('../guest.rb')

class TestGuest < Minitest::Test

  def setup
    @roger = Guest.new("Roger", 100)
  end

  def test_get_name
    assert_equal("Roger", @roger.name)
  end

  def test_has_money
    assert_equal(100, @roger.money)
  end





end