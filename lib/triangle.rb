class Triangle
  attr_reader :side1, :side2, :side3, :trianleerror, :group, :standard
    
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 == 0 || side2 == 0 || side3 == 0 || (side3 + side2) <= side1 || (side3 + side1) <= side2 || (side1 + side2) <= side3
      raise TriangleError 
    elsif side3 == side2 && side3 == side1 && side1 == side2
      return :equilateral
    elsif (side3 == side2 ) || (side2 == side1) || (side3 == side1)
      return :isosceles
    else 
      return :scalene
    end
  end
end

class TriangleError < StandardError
  
  def initialize
     puts "That ain't a correct triangle, ya fool!"
  end

end
