class Triangle
  #sl1 = Side Length 1, sl2 = Side Length 2, sl3 = Side Length 3
  def initialize(sl1, sl2, sl3)
    @sl1 = sl1
    @sl2 = sl2
    @sl3 = sl3
    @side_lengths = []
    @side_lengths << self
  end

  def kind
    if @side_lengths.any? {|sl| sl == 0}
      raise TriangleError
    elsif (@sl1+@sl2 <= @sl3) || (@sl1+@sl3 <= @sl2) || (@sl2+@sl3 <= @sl1)
      raise TriangleError
    else
      if @side_lengths.all? {|sl| sl == @side_lengths[0]}
        :equilateral
      elsif @side_lengths.uniq.length == 2
        :isosceles
      elsif @side_lenghts.uniq.length == 3
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
end
