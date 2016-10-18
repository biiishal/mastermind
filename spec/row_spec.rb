require "spec_helper"

module Mastermind

  describe Row do

    context "#initialize" do
      it "is initialized with a row of 4 empty elements" do
        row = Row.new
        expect(row.slots).to eq(['', '', '', ''])
      end
    end

  end

end