# frozen_string_literal: false

require_relative 'board'

# Tic-Tac-Toe game
class TicTacToe
  def initialize
    @game_board = Board.new
    self.x_score = 0
    self.o_score = 0
  end

  def show_score
    puts "X: #{x_score} points"
    puts "O: #{o_score} points"
  end

  private

  attr_reader :game_board
  attr_accessor :x_score, :o_score
end
