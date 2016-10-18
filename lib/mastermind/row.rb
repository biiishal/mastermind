# Row class represents a single row in the Mastermind board.
# It has an Array called Slot, which stores 4 color values and
# an indicator which has an Indicator object.

module Mastermind

  class Row
    attr_accessor :slots

    def initialize
      @slots = ["", "", "", ""]
    end

  end

end