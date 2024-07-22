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

  def won?
    (0..2).each do |index|
      # Check row and column
      return true if check(board[index]) || check([board[0][index], board[1][index], board[2][index]])
    end

    # Check diagonals
    check([board[0][0], board[1][1], board[2][2]]) || check([board[0][2], board[1][1], board[2][0]])
  end

  def full?
    board.each do |row|
      row.each do |item|
        return false if item.nil?
      end
    end
    true
  end

  def available?(coord)
    board[coord[0]][coord[1]].nil? && coord[0].between?(0, 2) && coord[1].between?(0, 2)
  end

  private

  attr_accessor :board
  attr_writer :winner

  def check(array)
    return false unless array.length == 3 && array.uniq == 1

    self.winner = array[0]
    true
  end
end
