require 'rspec'
require_relative '../lib/board'

describe Board do
  describe '#create_board' do
    it 'prints the board to the CLI' do
      board = Board.new

      expect{ board.create_board }.to output( 
      "0|   |   |   |   |   |   |   |\n" \
      "1|   |   |   |   |   |   |   |\n" \
      "2|   |   |   |   |   |   |   |\n" \
      "3|   |   |   |   |   |   |   |\n" \
      "4|   |   |   |   |   |   |   |\n" \
      "5|   |   |   |   |   |   |   |\n" \
      "   0   1   2   3   4   5   6\n").to_stdout
    end
  end

  describe '#update_board' do
    it 'takes user input and adds it to the board' do
      board = Board.new
      move_made = 3
      turn = 0

      expect {board.update_board(move_made, turn)}.to output(
      "0|   |   |   |   |   |   |   |\n" \
      "1|   |   |   |   |   |   |   |\n" \
      "2|   |   |   |   |   |   |   |\n" \
      "3|   |   |   |   |   |   |   |\n" \
      "4|   |   |   |   |   |   |   |\n" \
      "5|   |   |   | O |   |   |   |\n" \
      "   0   1   2   3   4   5   6\n").to_stdout
    end
  end

  describe '#check_status' do
    it 'takes the current board and checks for wins' do
      board = Board.new
      @board = 
      ["0|   |   |   |   |   |   |   |\n" \
      "1|   |   |   |   |   |   |   |\n" \
      "2|   |   |   |   |   |   |   |\n" \
      "3|   |   |   |   |   |   |   |\n" \
      "4|   |   |   |   |   |   |   |\n" \
      "5|   |   |   | O |   |   |   |\n" \
      "   0   1   2   3   4   5   6\n"]
      
      expect { board.check_status }.to output(true).to_stdout
    end
  end
end