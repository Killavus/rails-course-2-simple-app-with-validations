class ProperTriangleValidator < ActiveModel::Validator
  def validate(triangle)
    return if triangle_is_not_defined_properly(triangle)

    shortest_side, medium_side, longest_side = [triangle.adjacent_leg, triangle.opposite_leg, triangle.hypotenuse].sort

    unless triangle_inequality_holds(shortest_side, medium_side, longest_side)
      triangle.errors[:base] << "Triangle does not hold triangle inequality law"
    end
  end

  def triangle_is_not_defined_properly(triangle)
    not [triangle.adjacent_leg, triangle.opposite_leg, triangle.hypotenuse].reject(&:present?).empty?
  end

  def triangle_inequality_holds(shortest_side, medium_side, longest_side)
    shortest_side + medium_side >= longest_side
  end
end