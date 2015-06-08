class Triangle
  # write code here
  module Error
    class Standard < StandardError; end
    class TriangleError < Standard; end
  end

  attr_reader :kind
  

  def initialize(x,y,z)
    @kind
    if invalid?(x,y,z) then raise Error::TriangleError 
    else

      if x==y and y==z then @kind = :equilateral
      elsif x==y or y==z or z==x then @kind = :isosceles
      else @kind = :scalene
      end
    end
  end

  def invalid?(x,y,z)
    if x+y<=z then return true
    elsif x+z<=y then return true
    elsif z+y<=x then return true
    elsif x<=0 or y<=0 or z<=0 then return true
    else return false
    end
  end

end