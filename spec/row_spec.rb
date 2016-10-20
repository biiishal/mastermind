require "spec_helper"

module Mastermind

  describe Row do

    context "#initialize" do
      it "initializes with an array of 4 empty elements" do
        row = Row.new
        expect(row.slots).to eq(['', '', '', ''])
      end

      it "initializes with an indicator object" do
        row = Row.new
        expect(row.indicator.class.to_s).to eq("Mastermind::Indicator")
      end
    end

    context "#update_indicator" do
      it "updates indicator values" do
        row = Row.new
        row.update_indicator([1,2,3,4])
        expect(row.indicator.values).to eq([1,2,3,4])
      end
    end

  end

end