# frozen_string_literal: true

require 'rspec'
require './lib/bottles_text/bottles_text'
require './lib/bottles_verse/bottles_verse'

RSpec.describe BottlesVerse do
  describe '#lyrics' do
    context 'when given 3' do
      it 'returns the correct verse' do
        expectation = "3 bottles of beer on the wall,\n" \
          "3 bottles of beer.\n" \
          "Take one down, pass it around,\n" \
          '2 bottles of beer on the wall.'

        expect(BottlesVerse.new(3).lyrics).to eq(expectation)
      end
    end

    context 'when given 2'
    it 'returns the correct verse' do
      expectation = "2 bottles of beer on the wall,\n" \
        "2 bottles of beer.\n" \
        "Take one down, pass it around,\n" \
        '1 bottle of beer on the wall.'

      expect(BottlesVerse.new(2).lyrics).to eq(expectation)
    end
  end

  context 'when given 1' do
    it 'returns the correct verse' do
      expectation = "1 bottle of beer on the wall,\n" \
        "1 bottle of beer.\n" \
        "Take it down, pass it around,\n" \
        'no more bottles of beer on the wall.'

      expect(BottlesVerse.new(1).lyrics).to eq(expectation)
    end
  end

  context 'when given 99' do
    it 'returns the correct verse' do
      expectation = "99 bottles of beer on the wall,\n" \
        "99 bottles of beer.\n" \
        "Take one down, pass it around,\n" \
        '98 bottles of beer on the wall.'

      expect(BottlesVerse.new(99).lyrics).to eq(expectation)
    end
  end

  context 'when number is 6' do
    it "replaces 'six bottles' with '1 six-pack'" do
      expectation = "1 six-pack of beer on the wall,\n" \
        "1 six-pack of beer.\n" \
        "Take one down, pass it around,\n" \
        '5 bottles of beer on the wall.'

      expect(BottlesVerse.new(6).lyrics).to eq(expectation)
    end
  end

  context 'when number is 7' do
    it "replaces 'six bottles' with '1 six-pack'" do
      expectation = "7 bottles of beer on the wall,\n" \
        "7 bottles of beer.\n" \
        "Take one down, pass it around,\n" \
        '1 six-pack of beer on the wall.'

      expect(BottlesVerse.new(7).lyrics).to eq(expectation)
    end
  end

  context 'when number is 0' do
    it 'returns the correct verse' do
      expectation = "No more bottles of beer on the wall,\n" \
        "no more bottles of beer.\n" \
        "Go to the store and buy some more,\n" \
        '99 bottles of beer on the wall.'

      expect(BottlesVerse.new(0).lyrics).to eq(expectation)
    end
  end
end
