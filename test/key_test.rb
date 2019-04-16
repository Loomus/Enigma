require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

  def setup
    @random_key = Key.new
  end

  def test_key_class_exists
    assert_instance_of Key, @random_key
  end

  def test_generate_key_method_length_of_key
    assert_equal 5, @random_key.key.length
  end

  def test_split_key_method
    
  end

  # def test_random_key_can_be_split
  #   assert > 0
  # end
end
