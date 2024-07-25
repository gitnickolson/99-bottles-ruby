# frozen_string_literal: true

class OneBottleText < BottlesText
  def bottles = '1 bottle'
  def third_line = 'Take it down, pass it around,'
  def self.handles?(number) = number == 1
end
