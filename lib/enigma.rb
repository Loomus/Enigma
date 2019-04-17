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
    offset_letter(message[0], key.key[0].to_i + offset.offsets[0].to_i)
  end

  def offset_letter(letter, offset)
    start = 0
    @alphabet.each do |place|
      if place == letter
        break
      end
      start += 1
    end
    p start
    p letter
    p offset
  end
end
e = Enigma.new
e.encrypt("hello world", "02715", "040895")


# message.chars.each_slice(4) do |string|
#   alphabet.index
#   binding.pry
# end
