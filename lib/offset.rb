class Offset

  def get_offset(date)
    squared_numeric = date.to_i * date.to_i
    squared_numeric.to_s[-4..-1]
  end
end
