class Board
  attr_reader :board, :symbols

  def initialize
    @board = [
      [' ', ' ', ' '],
      [' ', ' ', ' '],
      [' ', ' ', ' ']
    ]
    @symbols = %w[X O]
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

  def mark(symbol, row, column)
    return false unless symbols.include?(symbol) && row.between?(0, 2) && column.between?(0, 2)

    board[row][column] = symbol
    true
  end
end
