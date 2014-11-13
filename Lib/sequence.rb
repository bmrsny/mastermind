 class Sequence
  attr_reader :sequence

  def initialize
    code_letters = %w(r g b y)
    @sequence = code_letters.map {|_| code_letters.sample }
  end
end
