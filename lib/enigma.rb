require './lib/offset'
require './lib/key'
require 'pry'

class Enigma
  attr_reader :alphabet

  def initialize
    @alphabet = ( "a".."z").to_a << " "
  end

  def encrypt(message, key, date)
    offset = Offset.new(date)
    key = Key.new(key)
    index = 0
    message.split('').each do |letter|
      p offset_letter(letter, key.key[index % 4].to_i + offset.offsets[index % 4].to_i)
      index += 1
    end
  end

  def offset_letter(letter, offset)
    start = get_letter_index(letter)
    @alphabet[(start + offset) % 27]
  end

  def get_letter_index(letter)
    start = 0
    @alphabet.each do |place|
      if place == letter
        return start
      end
      start += 1
    end
  end
end
e = Enigma.new
e.encrypt("hello world", "02715", "040895")


# message.chars.each_slice(4) do |string|
#   alphabet.index
#   binding.pry
# end
