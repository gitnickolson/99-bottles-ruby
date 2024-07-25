# frozen_string_literal: true

require './lib/bottles_text/bottles_text'
require './lib/bottles_text/zero_bottles_text'
require './lib/bottles_text/one_bottle_text'
require './lib/bottles_text/six_bottles_text'

class Song
  def verses(range_start:, range_end:)
    (range_end..range_start).to_a.reverse.map { |verse_number| verse(verse_number) }.join("\n")
  end

  def verse(number)
    bottles_text = BottlesText.for(number)

    "#{bottles_text}".capitalize + " of beer on the wall,\n" \
    "#{bottles_text} of beer.\n" \
    "#{bottles_text.third_line}\n" \
    "#{bottles_text.next_bottle_number} of beer on the wall."
  end
end
