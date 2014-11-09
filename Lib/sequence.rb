 class Sequence
  attr_reader :sequence

  def available_choices
    %w(r g b y)
  end

  def randomizer
    @random_letters = available_choices.map { available_choices.sample }
  end

end
