class CreateTriangles < ActiveRecord::Migration
  def change
    create_table :triangles do |t|
      t.float :adjacent_leg
      t.float :opposite_leg
      t.float :hypotenuse

      t.timestamps
    end
  end
end
