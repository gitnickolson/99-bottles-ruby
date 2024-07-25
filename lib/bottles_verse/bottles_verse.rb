# frozen_string_literal: true

require './lib/bottles_text/bottles_text'

class BottlesVerse
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def lyrics
    bottles_text = BottlesText.for(number)
    "#{bottles_text}".capitalize + " of beer on the wall,\n" \
      "#{bottles_text} of beer.\n" \
      "#{bottles_text.third_line}\n" \
      "#{bottles_text.next_bottle_number} of beer on the wall."
  end
end
