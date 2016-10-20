# Game class is the main class that controls the flow of the game.
# It follows REPL program interface. Prompts user to choose if he/she wants
# to guess combinations or set. Based upon the choice, creates or lets the user
# set the winning combination.
# The game has a class variable of 8 colors. This will be maintained as a hash.

module Mastermind

  class Game
    attr_accessor :board

    def initialize
      @board = Board.new
    end

    def solicit_move
      "Enter 4 colors separated with space:"
    end

    def get_move(human_choices = gets.chomp)
      human_choices = human_choices.split(/[\s,]+/)
      human_move_to_color(human_choices)
    end

    def play
      puts "Do you want to play or set winning combination?\
            Enter 1 to play, 2 to set combination:"
      choice = gets.chomp
      if choice == "1"
        @board.winning_combination = @board.random_combination
        @board.grid.each do |row|
          @board.display_board
          @board.display_color_options
          puts solicit_move
          guesses = get_move
          row.slots=(guesses)
          match_results = guesses.match_with(@board.winning_combination)
          row.indicator.values = match_results
          if winner?(match_results)
            puts winning_message
            return
          end
          next
        end
      else
        puts "sorry error"
      end
    end

    private

    def human_move_to_color(human_choices)
      mapping = {
        "1" => "red",
        "2" => "green",
        "3" => "yellow",
        "4" => "blue",
        "5" => "magenta",
        "6" => "cyan",
        "7" => "purple",
        "8" => "white"
      }
      human_choices.map { |choice| mapping[choice] }
    end

    def winner?(match_results)
      match_results.all? { |r| r == :exact_match }
    end

    # def match_values(guesses)
    #   guesses.match_with(@board.winning_combination)
    # end

    def winning_message
      "Wow! all combinations match. You've won the fucking game."
    end
  end

end