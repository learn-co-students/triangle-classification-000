require 'pry'
class TriangleError < StandardError
end

class Triangle
	attr_reader :side_1, :side_2, :side_3
	def initialize(side_1, side_2, side_3)
		@side_1 = side_1
		@side_2 = side_2
		@side_3 = side_3
	end

	def all_sides
		@all_sides ||= []
		@all_sides.push(side_1, side_2,side_3)
	end

	def kind
		if (side_1 + side_2 <= side_3) || (side_2 + side_3 <= side_1) || (side_3 + side_1 <= side_2)
			raise TriangleError, "negative number"
		elsif all_sides.any? { |side| side < 0 }
			raise TriangleError, "negative number"
		elsif all_sides.any? { |side| side == 0 }
			raise TriangleError, "number is 0"
		elsif all_sides.all? {|side| side_1 == side && side_2 == side && side_3 == side}
			:equilateral 
		elsif side_1 == side_2 || side_1 == side_3 ||side_2 == side_3 
			:isosceles
		else
			:scalene
		end
	end
end