# frozen_string_literal: true

require 'rspec'
require './lib/bottles_text/bottles_text'
require './lib/bottles_text/one_bottle_text'

RSpec.describe OneBottleText do
  it 'inherits from BottlesText' do
    expect(described_class).to be < BottlesText
  end

  describe '.handles?' do
    context 'when number is 1' do
      it 'returns true' do
        expect(described_class.handles?(1)).to be true
      end
    end

    context 'when number is not 0' do
      it 'returns false' do
        expect(described_class.handles?(92)).to be false
      end
    end
  end

  describe '#bottles_text' do
    it 'returns 1 bottle text' do
      expect(described_class.new(1).bottles).to eq '1 bottle'
    end
  end

  describe '#third_line' do
    it 'returns the third line text for number 1' do
      expect(described_class.new(1).third_line).to eq 'Take it down, pass it around,'
    end
  end
end
