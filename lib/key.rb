require 'pry'
class Key
  attr_reader :key,
              :key_value

  def initialize(key)
    # binding.pry
    # @key_value = key
    # binding.pry
    @key = [key[0..1], key[1..2], key[2..3], key[3..4]]

  end

  # def random_key
  #   # binding.pry
  #   new_key = 'OOOO' + rand(0..99999).to_s
  #   new_key[-5..-1]
  # end
end
