require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new
  end

  def test_offset_class_exists
    assert_instance_of Offset, @offset
  end

  def test_get_offset_method
    assert_equal "1025", @offset.set_offset("040895")
  end
end
