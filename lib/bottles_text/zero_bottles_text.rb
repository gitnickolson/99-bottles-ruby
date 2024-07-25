# frozen_string_literal: true

class ZeroBottlesText < BottlesText
  def bottles = 'no more bottles'
  def next_bottle_number = BottlesText.for(99)
  def third_line = 'Go to the store and buy some more,'
  def self.handles?(number) = number.zero?
end
