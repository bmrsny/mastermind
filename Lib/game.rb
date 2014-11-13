require_relative 'guess'
require_relative 'sequence'
require_relative 'printer'
require_relative 'guess_evaluator'
require 'colorize'

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
      puts printer.user_guess_count_printer(guess_counter).green
      puts printer.color_instructions
      puts printer.game_command_request
      @guess = gets.strip.downcase.chars
      puts printer.game_split_up_screen
      guess_eval = GuessEvaluator.new(guess, sequence.sequence)
      guess_input = Guess.new(guess)

      if guess_eval.correct_match?
        puts printer.game_win.green
      else
        puts guess_input.check_guess_length
        puts guess_input.check_guess_colors
        num_colors = guess_eval.correct_colors
        num_positions = guess_eval.correct_positions
        puts printer.results(num_colors, num_positions)
        @guess_counter += 1
        # @guess_counter << guess_input
        # puts turn_counter
        # display.turn_counter
        # turn_counter
        puts printer.game_split_up_screen
      end
    end
  end

  def win?
    guess == sequence.sequence
  end

  def quit?
    guess == ['q'] || guess == ['quit']
  end

  # def turn_counter
  #   @guess_counter.length
  #   "You are on guess #: #{@guess_counter.length}"
  # end

  # def secret_code? # try to have a cheat code for sequence
  #   return sequence.sequence if guess == ['secr']
  # end

end
