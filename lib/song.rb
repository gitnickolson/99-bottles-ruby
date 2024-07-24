# frozen_string_literal: true

require './lib/bottles_text/zero_bottles_text'
require './lib/bottles_text/one_bottle_text'
require './lib/bottles_text/bottles_text'

class Song # rubocop:disable Style/Documentation
  def verses(range_start:, range_end:)
    (range_end..range_start).to_a.reverse.map { |verse_number| verse(verse_number) }.join("\n")
  end

  def verse(number)
    text = BottlesText.for(number)
    next_text = BottlesText.for(text.next_bottle_number)

    "#{text.bottles.capitalize} of beer on the wall,\n" \
    "#{text.bottles} of beer.\n" \
    "#{text.third_line}\n" \
    "#{next_text.bottles} of beer on the wall."
  end
end
