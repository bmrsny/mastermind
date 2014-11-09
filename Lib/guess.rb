class Guess
  attr_reader :guess

  def initialize(guess)
    @guess = guess.split('')
  end

  def check_length
    if guess.length < 4
      'This guess is too short, please enter a 4 letter guess'
    elsif guess.length > 4
      'This guess is too short, please enter a 4 letter guess'
    end
  end

  def check_colors
    available_colors = %w(r g b y)
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
