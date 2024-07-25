# frozen_string_literal: true

class BottlesText # rubocop:disable Style/Documentation
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
    else
      BottlesText.new(number)
    end
  end

  def bottles = number == 6 ? '1 six pack' : "#{number} bottles"
  def next_bottle_number = BottlesText.for(number - 1)
  def third_line = 'Take one down, pass it around,'
  def to_s = bottles
end
