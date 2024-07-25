# frozen_string_literal: true

class BottlesText
  def initialize(number) = @number = number
  attr_reader :number

  def self.for(number)
    bottles_text_classes.find { |candidate| candidate.handles?(number) }&.new(number)
  end

  def bottles
    "#{number} bottles"
  end

  def next_bottle_number
    BottlesText.for(number - 1)
  end

  def third_line
    'Take one down, pass it around,'
  end

  def to_s
    bottles
  end

  def self.handles?(_number)
    true
  end

  def self.bottles_text_classes
    @bottles_text_classes ||= [self]
  end

  def self.inherited(candidate)
    super
    bottles_text_classes.prepend(candidate)
  end
end
