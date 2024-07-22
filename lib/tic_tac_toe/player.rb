# frozen_string_literal: true

class Player
  attr_reader :points

  def initialize
    @points = 0
  end

  def increment_points
    self.points += 1
  end

  private

  attr_writer :points
end
