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

  def input_coord
    puts 'Type the coordenates:'
    puts 'Which row? (0/1/2)'
    row = gets.chomp

    puts 'Which column? (0/1/2)'
    column = gets.chomp

    [row, column]
  end

  def print_score
  end

  private

  attr_reader :board, :nought, :cross
end
