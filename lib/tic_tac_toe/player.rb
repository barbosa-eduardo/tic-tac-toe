# frozen_string_literal: true

class Player
  attr_reader :points, :symbol

  def initialize(symb)
    @points = 0
    @symbol = symb
  end

  def increment_points
    self.points += 1
  end

  private

  attr_writer :points, :symbol
end
