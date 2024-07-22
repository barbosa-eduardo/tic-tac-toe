# frozen_string_literal: true

require_relative 'nought'
require_relative 'cross'

class Board
  attr_reader :winner

  def initialize
    @winner = nil
    @board = [
      [nil, nil, nil],
      [nil, nil, nil],
      [nil, nil, nil]
    ]
  end

  def reset
    @winner = nil
    @board = [
      [nil, nil, nil],
      [nil, nil, nil],
      [nil, nil, nil]
    ]
  end

  def print
  end

  def mark(symbol, coord)
    return unless available?(coord)

    board[coord[0]][coord[1]] = symbol
    game_won?
  end

  def game_won?
  end

  def full?
  end

  def available?(coord)
    board[coord[0]][coord[1]].nil? && coord[0].between?(0, 2) && coord[1].between?(0, 2)
  end

  private

  attr_accessor :board
end
