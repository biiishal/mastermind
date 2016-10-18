require 'spec_helper'

describe Array do

  context "#match_with" do
    it "returns :exact_match if the both position and values match" do
      expect([1, 2, 3].match_with([9, 2, 0])).to eq([:no_match, :exact_match, :no_match])
    end

    it "returns :fuzzy_match if only the value match" do
      expect([1, 2, 3].match_with([3, 2, 0])).to eq([:fuzzy_match, :exact_match, :no_match])
    end

    it "returns :no_match if neither match" do
      expect([1, 2, 3].match_with([5, 5, 0])).to eq([:no_match, :no_match, :no_match])
    end
  end

end