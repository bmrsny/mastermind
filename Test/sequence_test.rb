gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence'

class Sequence_Test < Minitest::Test

  def test_it_takes_a_sequence
    sequence = Sequence.new(sequence)
    assert sequence
  end

  def test_it_has_a_length
    sequence = Sequence.new(sequence)
    assert_equal 4, sequence.sequence_length

  end
end
