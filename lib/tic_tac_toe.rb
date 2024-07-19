# frozen_string_literal: false

require_relative 'board'

# Tic-Tac-Toe game
class TicTacToe
  def initialize
    @game_board = Board.new
  end

  private

  attr_reader :game_board
end
