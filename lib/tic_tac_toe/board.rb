# frozen_string_literal: true

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

  def print
    puts '     0   1   2'
    puts
    board.each_with_index do |row, index|
      chars = row.map { |i| i.nil? ? ' ' : i }
      puts "#{index}    #{chars[0]} | #{chars[1]} | #{chars[2]} "
      puts '    -----------' unless index == 2
    end
    puts
  end

  def mark(symbol, coord)
    return false unless available?(coord)

    board[coord[0]][coord[1]] = symbol
    won?
    true
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
    return false unless array.compact.length == 3 && array.uniq.length == 1

    self.winner = array[0]
    true
  end
end
