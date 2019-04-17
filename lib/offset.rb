class Offset
  attr_reader :offsets

  def initialize(date)
    squared_numeric = date.to_i * date.to_i
    @offsets = squared_numeric.to_s[-4..-1].split("")
  end
end
# o = Offset.new("040895")
# p o.offsets
