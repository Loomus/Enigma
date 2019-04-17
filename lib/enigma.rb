require './lib/offset'
require 'pry'
class Enigma
  # take message, offset message with date, that is split into offset
  alphabet = ( "a".."z").to_a << " "

  def encrypt(message, key, offset)
    Offset.new
    message.chars.each_slice(4) do |string|
      alphabet.index
      binding.pry
    end
  end
end
