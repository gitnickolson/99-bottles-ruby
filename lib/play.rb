# frozen_string_literal: true

require './lib/song'

puts 'Enter numbers between 99 and 0 (inclusive)'
puts 'Start verse number:'
range_start = gets.chomp.to_i
puts 'End verse number:'
range_end = gets.chomp.to_i

puts Song.new.verses(range_start:, range_end:)
