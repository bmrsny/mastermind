
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
    guess.zip(sequence).select do |guess_value, sequence_value |
      if guess_value == sequence_value
        selected << guess_value
      end
    end

    @selected.length
  end
end













# def play
#   sequence = Sequence.new
#   guess = Guess.new(gets.chomp)
#
#   guess_evaluator = GuessEvaluator.new(guess.guess, sequence.sequence)
#
# end



# correct_elements = sequence
# (0..3).each do |n|
#   index = correct_elements.find_index(guess[n])
#   if index != nil
#     correct_elements.delete_at(index)
#   end
# end
# 4 - correct_elements.length
#     # 4-(sequence - guess).length


  # def correct_colors
  #   # correct_elements = sequence
  #   # correct_colors = []
  #   # correct_elements.each do |color|
  #   #   if guess.include?(color)
  #   #     correct_colors << color
  #   #     index = guess.find_index(color)
  #   #     guess.delete_at(index)
  #   #   end
  #   # end
  #   # correct_colors.length
  # end



  # g = Guess.new(input)
  # s = Sequence.new
  # GuessEvaluator.new(g.guess, s.value)
  #
  # class Guess
  #   def initialize(["g","r","r","g"])
  #     @guess = ["g","r","r","g"]
  #   end
  # end
