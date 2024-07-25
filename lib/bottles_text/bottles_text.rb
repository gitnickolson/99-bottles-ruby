# frozen_string_literal: true

class BottlesText
  BOTTLE_TEXT_CLASSES = -> {
    {
      0 => ZeroBottlesText,
      1 => OneBottleText,
      6 => SixBottlesText
    }
  }

  attr_reader :number

  def initialize(number) = @number = number
  def self.for(number) = (BOTTLE_TEXT_CLASSES.call[number] || BottlesText).new(number)
  def bottles = "#{number} bottles"
  def next_bottle_number = BottlesText.for(number - 1)
  def third_line = 'Take one down, pass it around,'
  def to_s = bottles
end
