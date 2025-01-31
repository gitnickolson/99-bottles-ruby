# frozen_string_literal: true

require 'rspec'
require './lib/bottles_text/bottles_text'
require './lib/bottles_text/zero_bottles_text'
require './lib/bottles_text/one_bottle_text'
require './lib/bottles_text/six_bottles_text'

RSpec.describe BottlesText do
  describe '.for' do
    before do
      allow(described_class).to receive(:new)
    end

    it 'initializes BottlesText class' do
      described_class.for(99)
      expect(described_class).to have_received(:new)
    end

    context 'when number is 0' do
      before do
        allow(ZeroBottlesText).to receive(:new)
      end

      it 'initializes ZeroBottlesText class' do
        described_class.for(0)
        expect(ZeroBottlesText).to have_received(:new)
      end
    end

    context 'when number is 1' do
      before do
        allow(OneBottleText).to receive(:new)
      end

      it 'initializes OneBottleText class' do
        described_class.for(1)
        expect(OneBottleText).to have_received(:new)
      end
    end

    context 'when number is 6' do
      before do
        allow(SixBottlesText).to receive(:new)
      end

      it 'initializes SixBottlesText class' do
        described_class.for(6)
        expect(SixBottlesText).to have_received(:new)
      end
    end
  end

  describe '.handles?' do
    it 'returns true' do
      expect(described_class.handles?(5)).to be true
    end
  end

  describe '.bottles_text_classes' do
    it 'returns an array containing the registered classes' do
      expect(described_class.bottles_text_classes).to eq [SixBottlesText, OneBottleText, ZeroBottlesText, BottlesText]
    end
  end

  describe '#bottles' do
    it 'returns the bottle count' do
      expect(described_class.new(99).bottles).to eq '99 bottles'
    end
  end

  describe '#next_bottle_number' do
    it 'returns the next bottle number obhect' do
      expect(described_class.new(99).next_bottle_number).to have_attributes(number: 98)
    end
  end

  describe '#third_line' do
    it 'returns the third line text' do
      expect(described_class.new(99).third_line).to eq 'Take one down, pass it around,'
    end
  end

  describe '#to_s' do
    it 'returns a string of the bottle count' do
      expect(described_class.new(99).to_s).to eq '99 bottles'
    end
  end
end
