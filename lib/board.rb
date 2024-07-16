class Board
  attr_reader :board

  def initialize
    @board = [
      ['X', ' ', ' '],
      [' ', 'X', ' '],
      [' ', ' ', 'X']
    ]
  end

  def to_s
    board_string = '  A B C' # Print column coordinates
    board.each_with_index do |row, index|
      board_string << "\n#{index}" # Print row coordinates
      row.each do |square|
        board_string << " #{square}"
      end
    end
    board_string
  end
end
