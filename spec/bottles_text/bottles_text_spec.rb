# frozen_string_literal: true

require 'rspec'
require './lib/bottles_text/bottles_text'

RSpec.describe BottlesText do # rubocop:disable Metrics/BlockLength
  describe '.for' do
    before do
      allow(BottlesText).to receive(:new)
    end

    it 'initializes BottlesText class' do
      BottlesText.for(99)
      expect(BottlesText).to have_received(:new)
    end

    context 'when number is 1' do
      before do
        allow(OneBottleText).to receive(:new)
      end

      it 'initializes OneBottlesText class' do
        BottlesText.for(1)
        expect(OneBottleText).to have_received(:new)
      end
    end

    context 'when number is 0' do
      before do
        allow(ZeroBottlesText).to receive(:new)
      end

      it 'initializes ZeroBottlesText class' do
        BottlesText.for(0)
        expect(ZeroBottlesText).to have_received(:new)
      end
    end
  end

  describe '#next_bottle_number' do
    it 'returns the next bottle number obhect' do
      expect(BottlesText.new(99).next_bottle_number).to have_attributes(number: 98)
    end
  end

  describe '#bottles_text' do
    it 'returns the bottle count' do
      expect(BottlesText.new(99).bottles).to eq '99 bottles'
    end

    context 'when number is 6' do
      it 'returns six pack text' do
        expect(BottlesText.new(6).bottles).to eq '1 six pack'
      end
    end
  end

  describe '#third_line' do
    it 'returns the third line text' do
      expect(BottlesText.new(99).third_line).to eq 'Take one down, pass it around,'
    end
  end
end
