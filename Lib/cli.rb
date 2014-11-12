require_relative 'printer'
require_relative 'game'

class CLI #repel
  attr_reader :printer,
              :command

  def initialize
    @printer = Printer.new
    @command = ''
  end

  def start
    puts printer.graphic
    puts printer.welcome_message
    puts printer.play_instructions

    # Game = game.new

    until quit?
      print ">"
      @command = gets.strip.downcase

      case
      when play?
        puts printer.lets_begin
        game = Game.new
        game.play
        puts 'What do you want to do now?'
        puts printer.play_instructions
      when instructions?
        puts printer.game_instructions
      when quit?
        puts printer.game_quit
      else
        puts "I do not know this command"
        # puts printer.graphic
      end
    end
    puts printer.ending
    puts printer.until_next_time
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



CLI.new.start



































#   attr_reader :command, :display, :instream, :outstream
#
#   def initialize(instream, outstream)
#     @command   = ""                  #user enters
#     @display   = Display.new
#     @instream  = instream
#     @outstream = outstream
#
#   end
#
#   def play?
#     command == "p" || command "play"
#   end
#
#   def intructions?
#     command = "i"
#   end
#
#   def finished?
#     command == "q" || command == "quit"
#   end
#
#   def call
#     outstream.puts Dispaly.graphic
#     outstream.puts Display.welcome_message #Intro message go find method
#     until finished? #when finished check @command
#       outstream.puts Display.command_request
#       @command = instream.gets.downcase.strip
#       process_initial_commands
#
#     elsif play?
#       Display.lets_begin
#       Display.command_request
#
#       @command = instream.gets.downcase.strip
#     else
#
#       #start timer
#       #start game @game.start?????
#     end
#   end
#
#
#     outstream.puts Display.ending #??????
#   end
# end
