class Printer

  def welcome_message
    "Welcome to MASTERMIND"
  end

  def play_instructions
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def game_instructions
    " The computer will select a set of four colors at random, duplicates may be possible.\n Your task will be to guess the colors and order in which they are placed.\n You will be prompted to enter your guess using the first letter of the color, for example [rrbg].\n After each guess the correct number of colors guessed, regardless of position, will be displayed.\n The number of correctly placed colors will also be displayed.\n Using that information and multiple guesses you will be able to discover the answer and win!"
  end

    def lets_begin
    "Lets Play"
  end

  def ending
    "Good ye!!!!"
  end

  def game_win
    "You win"
    # +program_instructions
  end

  def game_quit
    "Exiting the game."
    # +program_instructions
  end

  def game_command_request
    "Enter your guess: "
  end

  def game_instructions
    "Game instructions."
  end

  def results(num_colors, num_positions)
    "You have #{num_colors} colors correct and #{num_positions} positions correct"
  end

  def graphic
    "   ▄▄▄▄███▄▄▄▄      ▄████████    ▄████████     ███        ▄████████    ▄████████   ▄▄▄▄███▄▄▄▄    ▄█  ███▄▄▄▄   ████████▄
     ▄██▀▀▀███▀▀▀██▄   ███    ███   ███    ███ ▀█████████▄   ███    ███   ███    ███ ▄██▀▀▀███▀▀▀██▄ ███  ███▀▀▀██▄ ███   ▀███
     ███   ███   ███   ███    ███   ███    █▀     ▀███▀▀██   ███    █▀    ███    ███ ███   ███   ███ ███▌ ███   ███ ███    ███
     ███   ███   ███   ███    ███   ███            ███   ▀  ▄███▄▄▄      ▄███▄▄▄▄██▀ ███   ███   ███ ███▌ ███   ███ ███    ███
     ███   ███   ███ ▀███████████ ▀███████████     ███     ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ███   ███   ███ ███▌ ███   ███ ███    ███
     ███   ███   ███   ███    ███          ███     ███       ███    █▄  ▀███████████ ███   ███   ███ ███  ███   ███ ███    ███
     ███   ███   ███   ███    ███    ▄█    ███     ███       ███    ███   ███    ███ ███   ███   ███ ███  ███   ███ ███   ▄███
      ▀█   ███   █▀    ███    █▀   ▄████████▀     ▄████▀     ██████████   ███    ███  ▀█   ███   █▀  █▀    ▀█   █▀  ████████▀
                                                                          ███    ███
    "
  end

end
