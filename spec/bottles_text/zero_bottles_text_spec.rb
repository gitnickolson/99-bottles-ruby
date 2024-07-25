# frozen_string_literal: true

require 'rspec'
require './lib/bottles_text/bottles_text'
require './lib/bottles_text/zero_bottles_text'

RSpec.describe ZeroBottlesText do
  it 'inherits from BottlesText' do
    expect(described_class).to be < BottlesText
  end

  describe '.handles?' do
    context 'when number is 0' do
      it 'returns true' do
        expect(described_class.handles?(0)).to be true
      end
    end

    context 'when number is not 0' do
      it 'returns false' do
        expect(described_class.handles?(77)).to be false
      end
    end
  end

  describe '#next_bottle_number' do
    it 'returns bottle number object with number 99' do
      expect(described_class.new(0).next_bottle_number).to have_attributes(number: 99)
    end
  end

  describe '#bottles_text' do
    it 'returns no more bottles_text' do
      expect(described_class.new(0).bottles).to eq 'no more bottles'
    end
  end

  describe '#third_line' do
    it 'returns the third line text for number 0' do
      expect(described_class.new(0).third_line).to eq 'Go to the store and buy some more,'
    end
  end
end
