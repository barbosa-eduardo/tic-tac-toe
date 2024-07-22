# frozen_string_literal: true

require_relative 'lib/tic_tac_toe'

loop do
  puts 'Do you wish to play another round? (Y/N)'
  answer = gets.chomp
  break if 'Y'.include?(answer.upcase) || 'N'.include?(answer.upcase)
end
