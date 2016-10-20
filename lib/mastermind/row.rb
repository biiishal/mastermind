# Row class represents a single row in the Mastermind board.
# It has an Array called Slot, which stores 4 color values and
# an indicator which has an Indicator object.

module Mastermind

  class Row
    attr_accessor :slots, :indicator

    def initialize
      @slots = ["", "", "", ""]
      @indicator = Indicator.new
    end

    def update_indicator(values=[])
      @indicator.values = values
    end
  end

end