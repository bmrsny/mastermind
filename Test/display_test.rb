gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/display'

class DisplayTest < Minitest::Test

  def test_has_a_welcome_message
    display = Display.new
    assert_equal "Welcome to MASTERMIND", display.welcome_message
  end

  def play_instructions
      display = Display.new
      assert_equal "Would you like to (p)lay, read the (i)nstructions, or (q)uit?", display.play_instructions
  end


  def test_game_instructions
    display = Display.new
    assert_equal " The computer will select a set of four colors at random, duplicates may be possible.\n Your task will be to guess the colors and order in which they are placed.\n You will be prompted to enter your guess using the first letter of the color, for example [rrbg].\n After each guess the correct number of colors guessed, regardless of position, will be displayed.\n The number of correctly placed colors will also be displayed.\n Using that information and multiple guesses you will be able to discover the answer and win!", display.game_instructions
  end

  def test_ending_words
    display = Display.new
    assert_equal "Good bye!!!!", display.ending
  end

  def test_game_win
    display = Display.new
    assert_equal "You win", display.game_win
  end

    #   def test_it_has_a_graphic_display
    #     display = Display.new
    #     assert_equal "   ▄▄▄▄███▄▄▄▄      ▄████████    ▄████████     ███        ▄████████    ▄████████   ▄▄▄▄███▄▄▄▄    ▄█  ███▄▄▄▄   ████████▄
    #  ▄██▀▀▀███▀▀▀██▄   ███    ███   ███    ███ ▀█████████▄   ███    ███   ███    ███ ▄██▀▀▀███▀▀▀██▄ ███  ███▀▀▀██▄ ███   ▀███
    #  ███   ███   ███   ███    ███   ███    █▀     ▀███▀▀██   ███    █▀    ███    ███ ███   ███   ███ ███▌ ███   ███ ███    ███
    #  ███   ███   ███   ███    ███   ███            ███   ▀  ▄███▄▄▄      ▄███▄▄▄▄██▀ ███   ███   ███ ███▌ ███   ███ ███    ███
    #  ███   ███   ███ ▀███████████ ▀███████████     ███     ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ███   ███   ███ ███▌ ███   ███ ███    ███
    #  ███   ███   ███   ███    ███          ███     ███       ███    █▄  ▀███████████ ███   ███   ███ ███  ███   ███ ███    ███
    #  ███   ███   ███   ███    ███    ▄█    ███     ███       ███    ███   ███    ███ ███   ███   ███ ███  ███   ███ ███   ▄███
    #   ▀█   ███   █▀    ███    █▀   ▄████████▀     ▄████▀     ██████████   ███    ███  ▀█   ███   █▀  █▀    ▀█   █▀  ████████▀
    #                                                                       ███    ███
    # ", display.graphic
    #   end
    # Test Text Won't Line up with text AHHHH!
end
