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
    end
  end

  class TriangleError < StandardError
  end
end
