# frozen_string_literal: true

require 'rspec'
require './lib/bottles_text/one_bottle_text'

RSpec.describe OneBottleText do # rubocop:disable Metrics/BlockLength
  describe '#next_bottle_number' do
    it 'returns 0' do
      expect(OneBottleText.new(1).next_bottle_number).to eq(0)
    end
  end

  describe '#bottles_text' do
    it 'returns no more bottles_text' do
      expect(OneBottleText.new(1).bottles).to eq '1 bottle'
    end
  end

  describe '#third_line' do
    it 'returns the third line text for number 1' do
      expect(OneBottleText.new(1).third_line).to eq  'Take it down, pass it around,'
    end
  end
end
