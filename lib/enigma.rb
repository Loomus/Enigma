require './lib/offset'
require './lib/key'
require 'pry'

class Enigma
  # take message, offset message with date, that is split into offset
  alphabet = ( "a".."z").to_a << " "

  def encrypt(message, key, date)
    offset = Offset.new(date)
    message.chars.each_slice(4) do |string|
      alphabet.index
      binding.pry
    end
  end
end
