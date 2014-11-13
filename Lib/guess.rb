
class Guess #guess input class
  attr_reader :guess

  def initialize(guess)
    @guess = guess #guess.split('')
  end

  def check_guess_length
    if guess.length < 4
      "This guess is too short, please enter a 4 letter guess".red
    elsif guess.length > 4
      'This guess is too long, please enter a 4 letter guess'.red
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
