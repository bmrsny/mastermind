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
      puts printer.game_command_request
      @guess = gets.strip.downcase
      guess_eval = GuessEvaluator.new(guess.chars, sequence.sequence)
      if guess_eval.correct_match?
        puts printer.game_win
      else
        num_colors = guess_eval.correct_colors
        num_positions = guess_eval.correct_positions
        puts printer.results(num_colors, num_positions)
      end
    end
  end

  def win?
    guess.chars == sequence.sequence
  end

  def quit?
    guess == 'q' || guess == 'quit'
  end

end
