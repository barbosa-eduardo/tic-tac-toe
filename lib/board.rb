class Board
  attr_reader :winner

  @winner = ''

  def initialize
    @board = [
      [' ', ' ', ' '],
      [' ', ' ', ' '],
      [' ', ' ', ' ']
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

  def mark(symbol, row, column)
    return false unless free_spot?(row, column)

    board[row][column] = symbol
    self.winner = check_winner

    true
  end

  private

  attr_reader :board, :symbols
  attr_writer :winner

  def free_spot?(row, column)
    # The spot is free if it exist and is empty
    return false unless row.between?(0, 2) && column.between?(0, 2) && board[row][column] == ' '

    true
  end

  def check_winner
    # The game is won when a row, column or diagonal is filled with the same symbol
    board.each_with_index do |row, index|
      return row[index] if check_row(index) || check_column(index)
    end
    return board[1][1] if check_diagonals

    ''
  end

  def check_row(index)
    board[index][0] == board[index][1] && board[index][1] == board[index][2]
  end

  def check_column(index)
    board[0][index] == board[1][index] && board[1][index] == board[2][index]
  end

  def check_diagonals
    middle = board[1][1]
    (middle == board[0][0] && middle == board[2][2]) || (middle == board[0][2] && middle == board[2][0])
  end
end
