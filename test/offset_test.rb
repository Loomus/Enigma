require './test/test_helper'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new("141499")
  end

  def test_offset_class_exists
    assert_instance_of Offset, @offset
  end

  def test_returns_offset
    assert_equal ["7", "0", "0", "1"], @offset.offsets
  end
end
