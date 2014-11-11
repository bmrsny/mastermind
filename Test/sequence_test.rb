gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence'

class Sequence_Test < Minitest::Test

    def test_sequence_exists
    sequence = Sequence.new
    assert sequence
    end

  def test_it_takes_an_array
    sequence = Sequence.new
    assert sequence.secret_sequence.is_a?(Array)
  end

  def test_it_has_a_length
    sequence = Sequence.new
    assert_equal 4, sequence.secret_sequence.length
  end
end
