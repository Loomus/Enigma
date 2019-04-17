class Enigma
  attr_reader :alphabet

  def initialize
    @alphabet = ( "a".."z").to_a << " "
  end

  def encrypt(message, key = random_key, date = Time.now.strftime("%d%m%y"))
    return {
      encryption: offset_message(message, key, date, 1),
      key: key,
      date: date
  }
  end

  def random_key
    new_key = 'OOOO' + rand(0..99999).to_s
    new_key[-5..-1]
  end

  def offset_message(message, key, date, direction)
    @offset = Offset.new(date)
    keys = Key.new(key)
    mod_message = ""
    message.split('').each do |letter|
      mod_message += offset_letter(letter, (keys.key[mod_message.length % 4].to_i + @offset.offsets[mod_message.length % 4].to_i) * direction)
    end
    mod_message
  end

  def decrypt(message, key = Key.new, date = Time.now.strftime("%d%m%y"))
    return {
      decryption: offset_message(message, key, date, -1),
      key: key,
      date: date
  }
  end

  def offset_letter(letter, offset)
    start = get_letter_index(letter.downcase)
    if start >= 0 && start < 27
      @alphabet[(start + offset) % 27]
    else
      letter
    end
  end

  def get_letter_index(letter)
    start = 0
    @alphabet.each do |place|
      if place == letter
        return start
      end
      start += 1
    end
    return start
  end
end
