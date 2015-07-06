class TriangleError < StandardError
end

class Triangle
  # write code here
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a, @b, @c = [a, b, c].sort
  end	
	
  def kind
    if (c <= 0 || b <= 0 || a <= 0) or (a + b <= c) then
	  raise TriangleError.new
	elsif a == b && a == c then
	  :equilateral
	elsif a == b || b == c then
      :isosceles
    else
      :scalene	
	end  
  end  
end