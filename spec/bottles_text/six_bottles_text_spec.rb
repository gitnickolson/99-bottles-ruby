# frozen_string_literal: true

require 'rspec'
require './lib/bottles_text/bottles_text'
require './lib/bottles_text/six_bottles_text'

RSpec.describe SixBottlesText do
  it 'inherits from BottlesText' do
    expect(described_class).to be < BottlesText
  end

  describe '.handles?' do
    context 'when number is 6' do
      it 'returns true' do
        expect(described_class.handles?(6)).to be true
      end
    end

    context 'when number is not 0' do
      it 'returns false' do
        expect(described_class.handles?(43)).to be false
      end
    end
  end

  describe '#bottles_text' do
    it 'returns six-pack text' do
      expect(described_class.new(6).bottles).to eq '1 six-pack'
    end
  end
end
