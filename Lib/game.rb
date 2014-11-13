require_relative 'guess'
require_relative 'sequence'
require_relative 'printer'
require_relative 'guess_evaluator'

class Game
  attr_reader :sequence,
              :guess,
              :printer,
              :guess_counter

  def initialize
    @sequence = Sequence.new
    @guess    = ''
    @printer  = Printer.new
    @guess_counter = 0
  end

  def play
    until win? || quit?
      printer.user_guess_count_printer(guess_counter)
      printer.color_instructions
      printer.game_command_request
      @guess = gets.strip.downcase.chars
      printer.game_split_up_screen
      guess_eval = GuessEvaluator.new(guess, sequence.sequence)
      guess_input = Guess.new(guess)

      if guess_eval.correct_match?
        printer.game_win
      else
        guess_input.check_guess_length
        printer.check_guess_length_and_print(guess)
        puts guess_input.check_guess_colors
        num_colors = guess_eval.correct_colors
        num_positions = guess_eval.correct_positions
        printer.results(num_colors, num_positions)
        @guess_counter += 1
        printer.game_split_up_screen
      end
    end
  end

  def win?
    guess == sequence.sequence
  end

  def quit?
    guess == ['q'] || guess == ['quit']
  end
end
