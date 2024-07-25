# frozen_string_literal: true

require 'rspec'
require './lib/song'

RSpec.describe Song do
  describe '#verses' do
    context 'for a given range'
    it 'returns correct verses for range 99 to 94' do
      expectation = "99 bottles of beer on the wall,\n" \
                    "99 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "98 bottles of beer on the wall.\n" \
                    "98 bottles of beer on the wall,\n" \
                    "98 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "97 bottles of beer on the wall.\n" \
                    "97 bottles of beer on the wall,\n" \
                    "97 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "96 bottles of beer on the wall.\n" \
                    "96 bottles of beer on the wall,\n" \
                    "96 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "95 bottles of beer on the wall.\n" \
                    "95 bottles of beer on the wall,\n" \
                    "95 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "94 bottles of beer on the wall.\n" \
                    "94 bottles of beer on the wall,\n" \
                    "94 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    '93 bottles of beer on the wall.'

      expect(Song.new.verses(range_start: 99, range_end: 94)).to eq(expectation)
    end

    it 'returns correct verses for range 8 to 0' do
      expectation = "8 bottles of beer on the wall,\n" \
                    "8 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "7 bottles of beer on the wall.\n" \
                    "7 bottles of beer on the wall,\n" \
                    "7 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "1 six-pack of beer on the wall.\n" \
                    "1 six-pack of beer on the wall,\n" \
                    "1 six-pack of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "5 bottles of beer on the wall.\n" \
                    "5 bottles of beer on the wall,\n" \
                    "5 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "4 bottles of beer on the wall.\n" \
                    "4 bottles of beer on the wall,\n" \
                    "4 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "3 bottles of beer on the wall.\n" \
                    "3 bottles of beer on the wall,\n" \
                    "3 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "2 bottles of beer on the wall.\n" \
                    "2 bottles of beer on the wall,\n" \
                    "2 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "1 bottle of beer on the wall.\n" \
                    "1 bottle of beer on the wall,\n" \
                    "1 bottle of beer.\n" \
                    "Take it down, pass it around,\n" \
                    "no more bottles of beer on the wall.\n" \
                    "No more bottles of beer on the wall,\n" \
                    "no more bottles of beer.\n" \
                    "Go to the store and buy some more,\n" \
                    '99 bottles of beer on the wall.'

      expect(Song.new.verses(range_start: 8, range_end: 0)).to eq(expectation)
    end
  end
end
