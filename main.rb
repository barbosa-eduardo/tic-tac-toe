# frozen_string_literal: true

require_relative 'lib/board'

board = Board.new
puts board
board.mark('X', 0, 2)
board.mark('O', 0, 2)
puts board
