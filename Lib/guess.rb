
class Guess
  attr_reader :guess

  def initialize(guess)
    @guess = guess
  end

  def check_guess_length
    if guess.length < 4
    elsif guess.length > 4
    end
  end

  def check_guess_colors
    available_colors = ["r","g","b","y"]
    if !guess.all? { |letter| available_colors.include?(letter) }
      'Please enter valid colors (r)ed, (b)lue, (g)reen, (y)ellow'
    end
  end

  def valid_length?
    guess.length == 4
  end

  def valid_colors?
    available_colors = %w(r g b y)
    guess.all? { |letter| available_color.include?(letter) }
  end
end
