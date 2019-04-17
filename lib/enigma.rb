require './lib/offset'
require './lib/key'
require 'pry'

class Enigma
  attr_reader :alphabet

  def initialize
    @alphabet = ( "a".."z").to_a << " "
  end

  def encrypt(message, key, date = Time.now.strftime("%d%m%y"))
    return {
      encryption: offset_message(message, key, date, 1),
      key: key,
      date: date
  }
  end

  def offset_message(message, key, date, direction)
    offset = Offset.new(date)
    keys = Key.new(key)
    mod_message = ""
    message.split('').each do |letter|
      mod_message += offset_letter(letter, (keys.key[mod_message.length % 4].to_i + offset.offsets[mod_message.length % 4].to_i) * direction)
    end
    mod_message
  end

  def decrypt(message, key, date = Time.now.strftime("%d%m%y"))
    return {
      decryption: offset_message(message, key, date, -1),
      key: key,
      date: date
  }
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
