require 'colorize'
class Printer

  def welcome_message
    puts "Welcome to MASTERMIND"
  end

  def play_instructions
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?".yellow
  end

  def game_instructions
    puts " The computer will select a set of four colors at random, duplicates may be possible.\n Your task will be to guess the colors and order in which they are placed.\n You will be prompted to enter your guess using the first letter of the color, for example [rrbg].\n After each guess the correct number of colors guessed, regardless of position, will be displayed.\n The number of correctly placed colors will also be displayed.\n Using that information and multiple guesses you will be able to discover the answer and win!"
  end

  def lets_begin
    puts "Lets Play"
  end

  def ending
    puts "Good Bye!!!!"
  end

  def confirm_quit
    puts "Do you really want to quit?".red
  end

  def game_win
    puts "
    _/      _/    _/_/    _/    _/      _/          _/  _/_/_/  _/      _/  _/  _/  _/
    _/  _/    _/    _/  _/    _/      _/          _/    _/    _/_/    _/  _/  _/  _/
    _/      _/    _/  _/    _/      _/    _/    _/    _/    _/  _/  _/  _/  _/  _/
    _/      _/    _/  _/    _/        _/  _/  _/      _/    _/    _/_/
    _/        _/_/      _/_/            _/  _/      _/_/_/  _/      _/  _/  _/  _/


    ".green
  end

  def game_quit
    puts "Exiting the game."
  end

  def game_command_request
    puts "Enter your guess: "
  end

  def game_split_up_screen
    puts "--------------------------------------------------"
  end

  def color_instructions
    puts "Choose (R)ed, (B)lue, (Yellow), or (G)reen".yellow
  end

  def example_code
    puts "Example: r g b y"
  end

  def previous_guess(guess)
    puts "Here is your previous guess #{guess}"
  end

  def user_guess_count_printer(guess_counter)
    puts "Current guess: # #{guess_counter}\n ".green
  end

  def turn_counter
    puts "Your on guess # : #{guess_counter}"
  end

  def confirm_command
    puts "I do not know this command".red
  end

  def results(num_colors, num_positions)
    puts "You have #{num_colors} colors correct and #{num_positions} positions correct"
  end

  def quit_confirm
    puts "Do you really want to quit?".red
  end

  def graphic
    clear_screen
    puts "      ▄▄▄▄███▄▄▄▄      ▄████████    ▄████████     ███        ▄████████    ▄████████   ▄▄▄▄███▄▄▄▄    ▄█  ███▄▄▄▄   ████████▄
    ▄██▀▀▀███▀▀▀██▄   ███    ███   ███    ███ ▀█████████▄   ███    ███   ███    ███ ▄██▀▀▀███▀▀▀██▄ ███  ███▀▀▀██▄ ███   ▀███
    ███   ███   ███   ███    ███   ███    █▀     ▀███▀▀██   ███    █▀    ███    ███ ███   ███   ███ ███▌ ███   ███ ███    ███
    ███   ███   ███   ███    ███   ███            ███   ▀  ▄███▄▄▄      ▄███▄▄▄▄██▀ ███   ███   ███ ███▌ ███   ███ ███    ███
    ███   ███   ███ ▀███████████ ▀███████████     ███     ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ███   ███   ███ ███▌ ███   ███ ███    ███
    ███   ███   ███   ███    ███          ███     ███       ███    █▄  ▀███████████ ███   ███   ███ ███  ███   ███ ███    ███
    ███   ███   ███   ███    ███    ▄█    ███     ███       ███    ███   ███    ███ ███   ███   ███ ███  ███   ███ ███   ▄███
    ▀█   ███   █▀    ███    █▀   ▄████████▀     ▄████▀     ██████████   ███    ███  ▀█   ███   █▀  █▀    ▀█   █▀  ████████▀
    ███    ███
    ".cyan
  end

  def until_next_time
    puts "  ██╗   ██╗███╗   ██╗████████╗██╗██╗         ███╗   ██╗███████╗██╗  ██╗████████╗    ████████╗██╗███╗   ███╗███████╗    ██╗██╗██╗
    ██║   ██║████╗  ██║╚══██╔══╝██║██║         ████╗  ██║██╔════╝╚██╗██╔╝╚══██╔══╝    ╚══██╔══╝██║████╗ ████║██╔════╝    ██║██║██║
    ██║   ██║██╔██╗ ██║   ██║   ██║██║         ██╔██╗ ██║█████╗   ╚███╔╝    ██║          ██║   ██║██╔████╔██║█████╗      ██║██║██║
    ██║   ██║██║╚██╗██║   ██║   ██║██║         ██║╚██╗██║██╔══╝   ██╔██╗    ██║          ██║   ██║██║╚██╔╝██║██╔══╝      ╚═╝╚═╝╚═╝
    ╚██████╔╝██║ ╚████║   ██║   ██║███████╗    ██║ ╚████║███████╗██╔╝ ██╗   ██║          ██║   ██║██║ ╚═╝ ██║███████╗    ██╗██╗██╗
    ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝╚══════╝    ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝   ╚═╝          ╚═╝   ╚═╝╚═╝     ╚═╝╚══════╝    ╚═╝╚═╝╚═╝
    ".magenta


  end

  def clear_screen
    print "\e[2J\e[f"
  end

end
