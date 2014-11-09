gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class GuessTest < Minitest::Test
  def test_it_has_a_guess
    guess = Guess.new('bbbb')
    assert_equal 'bbbb', guess.guess
  end

end
