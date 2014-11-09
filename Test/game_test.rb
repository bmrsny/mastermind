gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'
require_relative '../lib/sequence_generator'
class GameTest < Minitest::Test
  def test_user_can_win_the_game
    game = Game.new
    guess = Guess.new('rrrr')
    assert_equal 'Winner winner, chicken dinner', game.won
  end
end
