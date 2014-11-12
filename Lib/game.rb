require_relative 'guess'
require_relative 'sequence'
require_relative 'printer'
require_relative 'guess_evaluator'

class Game
  attr_reader :sequence,
              :guess,
              :printer

  def initialize
    @sequence = Sequence.new
    @guess    = ''
    @printer  = Printer.new
  end

  def play
    p sequence.sequence
    until win? || quit?
      puts printer.color_instructions
      puts printer.example_code
      puts printer.game_command_request
      @guess = gets.strip.downcase.chars
      guess_eval = GuessEvaluator.new(guess, sequence.sequence)
      guess_input = Guess.new(guess)

      if guess_eval.correct_match?
        puts printer.game_win
      else
        puts guess_input.check_guess_length
        puts guess_input.check_guess_colors
        num_colors = guess_eval.correct_colors
        num_positions = guess_eval.correct_positions
        puts printer.results(num_colors, num_positions)
      end
    end
  end

  def win?
    guess == sequence.sequence
  end

  def quit?
    guess == 'q' || guess == 'quit'
  end

end
