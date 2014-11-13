gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'
require_relative '../lib/guess_evaluator'
require_relative '../lib/sequence'
require_relative '../lib/guess'

class GameTest < Minitest::Test

  def test_there_is_a_game
    game = Game.new
    assert game
  end

  def test_game_starts_with_an_empty_guess
    game = Game.new
    guess_input = Guess.new('')
    assert_equal '', guess_input.guess
  end
end
