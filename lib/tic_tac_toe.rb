# frozen_string_literal: true

require_relative 'tic_tac_toe/board'
require_relative 'tic_tac_toe/player'

class TicTacToe
  def initialize
    @board = Board.new
    @nought = Player.new
    @cross = Player.new
  end

  def start
    while board.winner.nil?

    end
  end

  private

  attr_reader :board, :nought, :cross
end
