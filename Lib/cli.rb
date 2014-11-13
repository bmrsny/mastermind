require_relative 'printer'
require_relative 'game'

class CLI
  attr_reader :printer,
              :command

  def initialize
    @printer = Printer.new
    @command = ''
  end

  def start
    printer.graphic
    printer.welcome_message
    printer.play_instructions
    until quit?
      print ">"
      @command = gets.strip.downcase

      case
      when play?
        printer.lets_begin
        game = Game.new
        game.play
        printer.quit_confirm
        printer.play_instructions
      when instructions?
        printer.game_instructions
      when quit?
        printer.game_quit
      else
        printer.confirm_command
      end
    end
    printer.ending
    printer.until_next_time
  end

  def play?
    command == "p" || command == "play"
  end

  def instructions?
    command =='i' || command == "instructions"
  end

  def quit?
    command == "q" || command == "quit"
  end
end
