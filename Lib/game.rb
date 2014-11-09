require_relative 'guess'
require_relative 'sequence'
class Game
  def initialize
    @sequence = 'rrrr'
  end

  def won
    sequence == Guess.new
  end

end
