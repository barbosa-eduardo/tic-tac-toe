# frozen_string_literal: true

require_relative 'tic_tac_toe/board'
require_relative 'tic_tac_toe/player'

class TicTacToe
  attr_reader :next_player

  def initialize
    @board = Board.new
    @nought = Player.new('O')
    @cross = Player.new('X')
    @next_player = cross
  end

  def play_turn
    board.print
    coord = input_coord
    board.mark(next_player.symbol, coord)
    self.next_player = (next_player == cross ? nought : cross)
  end

  def input_coord
    puts 'Type the coordenates:'
    puts 'Which row? (0/1/2)'
    row = gets.chomp until row.length == 1 && row.ord.between?(48, 50)

    puts 'Which column? (0/1/2)'
    column = gets.chomp until column.length == 1 && column.ord.between?(48, 50)

    [row.to_i, column.to_i]
  end

  def print_score
    puts "Player #{cross.symbol} has #{cross.points} points!"
    puts "Player #{nought.symbol} has #{nought.points} points!"
  end

  private

  attr_reader :board, :nought, :cross
  attr_writer :next_player
end
