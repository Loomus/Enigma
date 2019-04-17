require 'pry'
class Key
  attr_reader :key

  def initialize(input_string)
    @key = [
      input_string[0..1],
      input_string[1..2],
      input_string[2..3],
      input_string[3..4]
    ]

  end

  def generate_key
    @key = rand(10000..99999)
  end

  # @key = generate_key.to_s
  # def split_key
  #   p a_key = @key[0..1]
  #   p b_key = @key[1..2]
  #   p c_key = @key[2..3]
  #   p d_key = @key[3..4]
  #   # binding.pry
  # end
end

# @new_key = Key.new("02715")
# @new_key.key
