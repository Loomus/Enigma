class Offset
  attr_reader :offsets

  def initialize
    @offsets = []
  end

  def set_offset(date)
    squared_numeric = date.to_i * date.to_i
    @offsets = squared_numeric.to_s[-4..-1].split("")
  end
end
o = Offset.new
o.set_offset("040895")
p o.offsets
