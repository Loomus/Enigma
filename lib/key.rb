require 'pry'
class Key
  attr_reader :key


  def initialize
    @key = generate_key.to_s
  end

  def generate_key
    @key = rand(10000..99999)
  end

  def split_key
    p a_key = @key[0..1]
    p b_key = @key[1..2]
    p c_key = @key[2..3]
    p d_key = @key[3..4]
    # binding.pry
  end
end

@new_key = Key.new
@new_key.split_key
