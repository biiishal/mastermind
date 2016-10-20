# Indicator class will hold values that are result of matching
# player input to guess the winning combination.

module Mastermind
  class Indicator
    attr_accessor :values
    def initialize
      @values = Array.new(4) { :no_match }
    end
  end
end