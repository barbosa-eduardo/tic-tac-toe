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

  def mark
  end

  def game_won?
  end

  def full?
  end

  private

  attr_accessor :board
end
