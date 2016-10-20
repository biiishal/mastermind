# Board class represents the board in the game of Mastermind.
# It will have a grid that consists of 10 rows along with
# winning combination which will be generated at the beginning
# if the player is the guesser or otherwise.

module Mastermind
  class Board
    attr_accessor :grid, :winning_combination
    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
      @winning_combination = Array.new(4)
    end

    def random_combination
      @@colors.keys.map do |color|
        color.to_s
      end.sample(4)
    end

    def display_board
      grid.each do |row|
        row.slots.each do |color|
          print " #{@@colors[color.to_sym]} #{@@dot_code} "
        end
        row.indicator.values.each do |value|
          case value
          when :fuzzy_match
            print " #{@@colors[:green]} #{@@small_dot_code}"
          when :exact_match
            print " #{@@colors[:red]} #{@@small_dot_code}"
          else
            print " #{@@grey} #{@@small_dot_code}"
          end
        end
        puts "#{@@default_color}"
        puts " "
      end
    end

    def display_color_options
      count = 1
      @@colors.each do |name, code|
        print "#{code} #{count} #{name}"
        count += 1
      end
      puts "#{@@default_color}"
    end

    private

    # Returns default grid which is an array of 10 Row objects.
    def default_grid
      Array.new(10) { Row.new }
    end


    @@colors = { red: "\e[38;5;1m",
                 green: "\e[38;5;28m",
                 yellow: "\e[38;5;3m",
                 blue: "\e[38;5;32m",
                 magenta: "\e[38;5;68m",
                 light_red: "\e[38;5;202m",
                 purple: "\e[38;5;129m",
                 neon: "\e[38;5;82m"}
    @@grey = "\e[90m"
    @@default_color = "\e[39m"
    @@dot_code = "\u2b24"
    @@small_dot_code = "\u26ab"
  end
end