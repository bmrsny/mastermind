gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess_evaluator'
require_relative '../lib/sequence'
require_relative '../lib/guess'


class GuessEvaluatorTest < Minitest::Test

    def test_guess_is_a_perfect_match
      guess    = ["r", "g", "r", "b"]
      sequence = ["r", "g", "r", "b"]
      guess_evaluator = GuessEvaluator.new(guess, sequence)

      assert guess_evaluator.correct_match?
    end

      def test_has_1_correct_color_element
        guess    = ["y", "r", "y", "g"]
        sequence = ["b", "b", "b", "r"]
        guess_evaluator = GuessEvaluator.new(guess, sequence)
        guess_evaluator.correct_colors

        assert_equal 1, guess_evaluator.correct_colors
      end

      def test_has_2_correct_color_elements
        guess    = ["r", "r", "g", "r"]
        sequence = ["r", "g", "y", "b"]
        guess_evaluator = GuessEvaluator.new(guess, sequence)
        guess_evaluator.correct_colors

        assert_equal 2, guess_evaluator.correct_colors
    end

    def test_has_3_correct_color_elements
      guess    = ["r", "g", "y", "r"]
      sequence = ["r", "y", "g", "b"]
      guess_evaluator = GuessEvaluator.new(guess, sequence)
      guess_evaluator.correct_colors

      assert_equal 3, guess_evaluator.correct_colors
    end

    def test_has_4_correct_color_elements
      guess    = ["r", "g", "b", "y"]
      sequence = ["r", "g", "b", "y"]
      guess_evaluator = GuessEvaluator.new(guess, sequence)
      guess_evaluator.correct_colors

      assert_equal 4, guess_evaluator.correct_colors
    end

    def test_has_3_correct_positions
      guess    = ["r", "g", "r", "b"]
      sequence = ["r", "g", "r", "r"]

      guess_evaluator = GuessEvaluator.new(guess, sequence)
      assert_equal 3, guess_evaluator.correct_positions
    end

end
