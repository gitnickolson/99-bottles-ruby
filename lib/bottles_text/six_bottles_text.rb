# frozen_string_literal: true

class SixBottlesText < BottlesText
  def bottles = '1 six-pack'
  def self.handles?(number) = number == 6
end
