# frozen_string_literal: true

class BottlesText
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.for(number)
    case number
    when 0
      ZeroBottlesText.new(number)
    when 1
      OneBottleText.new(number)
    when 6
      SixBottlesText.new(number)
    else
      BottlesText.new(number)
    end
  end

  def bottles = "#{number} bottles"
  def next_bottle_number = BottlesText.for(number - 1)
  def third_line = 'Take one down, pass it around,'
  def to_s = bottles
end
