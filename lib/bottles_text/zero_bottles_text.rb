# frozen_string_literal: true

require './lib/bottles_text/bottles_text'

class ZeroBottlesText < BottlesText # rubocop:disable Style/Documentation
  def bottles = 'no more bottles'
  def next_bottle_number = BottlesText.for(99)
  def third_line = 'Go to the store and buy some more,'
end
