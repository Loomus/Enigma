class Key
  attr_reader :key

  def initialize(key)
    @key = [key[0..1], key[1..2], key[2..3], key[3..4]]
  end
end
