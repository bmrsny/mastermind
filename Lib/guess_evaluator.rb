
class GuessEvaluator
  attr_reader :guess, :sequence, :selected

  def initialize(guess, sequence)
    @guess    = guess
    @sequence = sequence
    @selected = []
  end



  def correct_match?
    guess == sequence
  end

  def correct_colors
    sequence_duplicate = sequence.dup
    @counter = 0

    guess.each do |letter|
      @counter += 1 if sequence_duplicate.include?(letter)
      sequence_duplicate.delete(letter)
    end
    @counter
  end

  def correct_positions
    guess.zip(sequence).select do | guess_value, sequence_value |
      selected << guess_value if guess_value == sequence_value
    end

    @selected.length
  end
end
