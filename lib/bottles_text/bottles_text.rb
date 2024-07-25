# frozen_string_literal: true

class BottlesText
  def initialize(number) = @number = number
  attr_reader :number

  def self.for(number) = bottles_text_classes.find { |candidate| candidate.handles?(number) }&.new(number)

  def bottles = "#{number} bottles"
  def next_bottle_number = BottlesText.for(number - 1)
  def third_line = 'Take one down, pass it around,'
  def to_s = bottles

  def self.handles?(_number) = true
  def self.bottles_text_classes = @bottles_text_classes ||= [self]
  def self.register(candidate) = bottles_text_classes.prepend(candidate)
end
