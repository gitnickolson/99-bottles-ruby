# frozen_string_literal: true

require 'rspec'
require_relative '../lib/song'

RSpec.describe Song do # rubocop:disable Metrics/BlockLength
  describe '#verse' do # rubocop:disable Metrics/BlockLength
    it 'returns the first verse when given 3' do
      expectation = "3 bottles of beer on the wall,\n" \
                    "3 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    '2 bottles of beer on the wall.'

      expect(Song.new.verse(3)).to eq(expectation)
    end

    it 'returns the second verse when given 2' do
      expectation = "2 bottles of beer on the wall,\n" \
                    "2 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    '1 bottle of beer on the wall.'

      expect(Song.new.verse(2)).to eq(expectation)
    end

    it 'returns the third verse when given 1' do
      expectation = "1 bottle of beer on the wall,\n" \
                    "1 bottle of beer.\n" \
                    "Take it down, pass it around,\n" \
                    'no more bottles of beer on the wall.'

      expect(Song.new.verse(1)).to eq(expectation)
    end

    it 'also returns the correct verse when given 99' do
      expectation = "99 bottles of beer on the wall,\n" \
                    "99 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    '98 bottles of beer on the wall.'

      expect(Song.new.verse(99)).to eq(expectation)
    end

    it "replaces 'six bottles' with '1 six pack' if number is 6" do
      expectation = "1 six pack of beer on the wall,\n" \
                    "1 six pack of beer.\n" \
                    "Take one down, pass it around,\n" \
                    '5 bottles of beer on the wall.'

      expect(Song.new.verse(6)).to eq(expectation)
    end

    it "replaces 'six bottles' with '1 six pack' if number is 7" do
      expectation = "7 bottles of beer on the wall,\n" \
                    "7 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    '1 six pack of beer on the wall.'

      expect(Song.new.verse(7)).to eq(expectation)
    end

    it 'changes the verse if there are 0 bottles' do
      expectation = "No more bottles of beer on the wall,\n" \
                    "no more bottles of beer.\n" \
                    "Go to the store and buy some more,\n" \
                    '99 bottles of beer on the wall.'

      expect(Song.new.verse(0)).to eq(expectation)
    end
  end

  describe '#verses' do # rubocop:disable Metrics/BlockLength
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

    it 'returns correct verses for range 8 to 0' do # rubocop:disable Metrics/BlockLength
      expectation = "8 bottles of beer on the wall,\n" \
                    "8 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "7 bottles of beer on the wall.\n" \
                    "7 bottles of beer on the wall,\n" \
                    "7 bottles of beer.\n" \
                    "Take one down, pass it around,\n" \
                    "1 six pack of beer on the wall.\n" \
                    "1 six pack of beer on the wall,\n" \
                    "1 six pack of beer.\n" \
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
