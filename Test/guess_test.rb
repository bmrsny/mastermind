gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'

class GuessTest < Minitest::Test
  def test_it_has_a_guess
    guess = Guess.new('bbbb')
    assert_equal %w(b b b b), guess.guess
  end

  def test_guess_is_not_valid_if_shorter_than_four
    guess = Guess.new('r')
    assert guess.check_guess_length, 'This guess is too short, please enter a 4 letter guess'
  end

  def test_guess_is_not_valid_if_longer_than_4
    guess = Guess.new('rrrry')
    assert guess.check_guess_length, 'This guess is too long, please enter a 4 letter guess'
  end

  def test_it_tells_us_to_enter_in_correct_colors
    guess = Guess.new('xxxx')
    assert_equal guess.check_guess_colors, 'Please enter valid colors (r)ed, (b)lue, (g)reen, (y)ellow'
  end
end
