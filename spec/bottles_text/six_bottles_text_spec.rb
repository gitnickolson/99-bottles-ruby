# frozen_string_literal: true

require 'rspec'
require './lib/bottles_text/six_bottles_text'
require './lib/bottles_text/bottles_text'

RSpec.describe SixBottlesText do
  it 'inherits from BottlesText' do
    expect(described_class).to be < BottlesText
  end

  describe '#bottles_text' do
    it 'returns six pack text' do
      expect(described_class.new(6).bottles).to eq '1 six pack'
    end
  end
end
