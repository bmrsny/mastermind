 class Sequence
  attr_reader :sequence

  def initialize
    code_letters = %w(r g b y)
    @sequence = code_letters.map {|_| code_letters.sample }
  end
end





# def easy_choices
#   %w(r g b y)
# end
#
# def randomizer
#   @sequence = available_choices.map { |_| available_choices.sample }
# end

# this shit kept failing. Why?

# When you start a game
  # Generate a sequence (1 per game)
  # Player makers a guess (Create a new Guess object)
  # GuessEvaluator compares guess to sequence (New Guess Evaluator)
    # & returns feedback
  # If Player did not win or run out of turns
    # Player makes a guess (Create a new Guess object)
    # New GuessEvaluator evaluates the Guess vs Sequence
  # Else:
    # Break out of the loop, display winning or losing message
  # End

  # Game.new.play
  #
  # class Game
  #   def initialize
  #   end
  #
  #   def play
  #     Cli.new.start
  #   end
  # end
