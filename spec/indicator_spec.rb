require 'spec_helper'

module Mastermind

  describe Indicator do
    context "#initialize" do
      it "initializes Indicator with an array of 4 values" do
        indicator = Indicator.new
        expect(indicator.values.size).to eq(4)
      end

      it "initializes Indicator with values having :no_match as default value" do
        indicator = Indicator.new
        indicator.values.each do |value|
          expect(value).to eq(:no_match)
        end
      end
    end
  end

end