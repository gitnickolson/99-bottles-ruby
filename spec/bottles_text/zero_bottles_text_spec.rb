# frozen_string_literal: true

require 'rspec'
require './lib/bottles_text/zero_bottles_text'

RSpec.describe ZeroBottlesText do # rubocop:disable Metrics/BlockLength
  describe '#next_bottle_number' do
    it 'returns 99' do
        expect(ZeroBottlesText.new(0).next_bottle_number).to eq(99)
      end
  end

  describe '#bottles_text' do
    it 'returns no more bottles_text' do
      expect(ZeroBottlesText.new(0).bottles).to eq 'no more bottles_text'
    end
  end

  describe '#third_line' do
    it 'returns the third line text for number 0' do
      expect(ZeroBottlesText.new(0).third_line).to eq 'Go to the store and buy some more,'
    end
  end
end
