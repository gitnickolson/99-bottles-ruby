# frozen_string_literal: true

class SixBottlesText < BottlesText
  def self.handles?(number) = number == 6
  def bottles = '1 six-pack'
end
