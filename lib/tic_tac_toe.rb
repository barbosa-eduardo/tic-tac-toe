# frozen_string_literal: true

require_relative 'tic_tac_toe/board'
require_relative 'tic_tac_toe/nought'
require_relative 'tic_tac_toe/cross'

class TicTacToe
  def initialize
    @board = Board.new
    @nought = Nought.new
    @cross = Cross.new
  end

  private

  attr_reader :board, :nought, :cross
end
