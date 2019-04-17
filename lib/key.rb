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
end
