
class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1 
    @side2 = side2
    @side3 = side3
  end
  
  def kind 
    sum1 = @side1 + @side2
    sum2 = @side2 + @side3
    sum3 = @side3 + @side1
    if @side1 == @side2 && @side2 == @side3
        if @side1 == 0 || @side2 == 0 || @side3 == 0
          begin
            raise TriangleError
          #rescue TriangleError => error
          #puts error.message
        end
      else
        return :equilateral
      end
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      if sum1 <= @side3 || sum2 <= @side1 || sum3 <= @side2
        begin
          raise TriangleError
        #rescue TriangleError => error
          #puts error.message
        end
      elsif @side1 == 0 || @side2 == 0 || @side3 == 0
        begin
          raise TriangleError
        end
      else
        return :isosceles
      end
    elsif @side1 != @side2 && @side2 != @side3
      if @side1 == 0 || @side2 == 0 || @side3 == 0
        begin
          raise TriangleError
          rescue TriangleError => error
          puts error.message
        end
      elsif sum1 < @side3 || sum2 < @side1 || sum3 < @side2
        begin
          raise TriangleError
        end
      else
        return :scalene
      end
    end
  end
  
end

class TriangleError < StandardError 
    def message
      "This is an invalid triangle."
    end
end