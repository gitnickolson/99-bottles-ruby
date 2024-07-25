# frozen_string_literal: true

require './lib/bottles_verse/bottles_verse'

class Song
  attr_reader :template

  def initialize(template: BottlesVerse)
    @template = template
  end

  def verses(range_start:, range_end:)
    (range_end..range_start).to_a.reverse.map do |verse_number|
      template.new(verse_number).lyrics
    end.join("\n")
  end
end
