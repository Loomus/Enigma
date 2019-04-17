require './test/test_helper'

class KeyTest < Minitest::Test

  def setup
    @random_key = Key.new("03728")
  end

  def test_key_class_exists
    assert_instance_of Key, @random_key
  end

  def test_generate_key_method_length_of_key
    assert_equal 4, @random_key.key.length
  end
end
