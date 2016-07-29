class Triangle

  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid?
    if (@a + @b > @c) && (@a + @c > @b) && (@b + @c > @a) && ((@a != 0) || (@b != 0) || (@c != 0))
      true
    else
      false
    end
  end

  def type
    if (@a == @b) && (@b == @c)
      :equilateral
    elsif (@a == @b) || (@b == @c) || (@a == @c)
      :isosceles
    else
      :scalene              
    end
  end

  def kind
    if valid?
      type
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
  
end