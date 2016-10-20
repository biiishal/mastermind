require 'spec_helper'

module Mastermind

  describe Board do
    context "#initialize" do
      it "initializes board with a grid" do
        expect { Board.new({grid: "Grid"}) }.not_to raise_error
      end

      it "sets grid with 10 rows by default" do
        board = Board.new
        expect(board.grid.size).to eq(10)
      end

      it "creates Row objects in each row" do
        board = Board.new
        board.grid.each do |row|
          expect(row.class.to_s).to eq("Mastermind::Row")
        end
      end
    end
  end

end