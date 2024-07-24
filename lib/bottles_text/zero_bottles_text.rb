# frozen_string_literal: true

require './lib/bottles_text/bottles_text'

class ZeroBottlesText < BottlesText # rubocop:disable Style/Documentation
  def bottles
    'no more bottles_text'
  end

  def next_bottle_number
    99
  end

  def third_line
    'Go to the store and buy some more,'
  end
end
