# frozen_string_literal: true

class BottlesText
  BOTTLES_TEXT_CLASSES = -> { [ZeroBottlesText, OneBottleText, SixBottlesText, BottlesText] }

  attr_reader :number

  def initialize(number) = @number = number
  def self.for(number) = BOTTLES_TEXT_CLASSES.call.find {|candidate| candidate.handles?(number)}.new(number)
  def self.handles?(number) = true
  def bottles = "#{number} bottles"
  def next_bottle_number = BottlesText.for(number - 1)
  def third_line = 'Take one down, pass it around,'
  def to_s = bottles
end
