class Triangle

  def initialize(a, b, c)
    @sides = (@a, @b, @c = a, b, c)
  end

  def kind
      if @sides.select{|s| s <= 0}.count > 0 || @a >= (@b + @c) || @c >= (@b + @a) || @b >= (@c + @a)
        raise TriangleError
      elsif @sides.select{|side| side == @a}.count == 3
        :equilateral
      elsif !@sides.select{|side| @sides.select{|s| s == side}.count == 2}.empty?
        :isosceles
      else
        :scalene
      end
  end

end
 
class TriangleError < StandardError
  def message
    "Those sides don't make a triagle"
  end
end