# frozen_string_literal: true

require_relative 'lib/tic_tac_toe'

game = TicTacToe.new
game.play_round
loop do
  puts 'Do you wish to play another round? (Y/N)'
  answer = gets.chomp
  break if 'Y'.include?(answer.upcase) || 'N'.include?(answer.upcase)

  game.play_round
end
