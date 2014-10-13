class Triangle < ActiveRecord::Base
  validates :adjacent_leg, :opposite_leg, :hypotenuse, presence: true
  validates :adjacent_leg, :opposite_leg, :hypotenuse, numericality: { greater_than_or_equal_to: 0.0 }

  validates_with ProperTriangleValidator
end
