class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.integer :num_empleado
      t.string :name
      t.string :father_lastname
      t.string :mother_lastname
      t.references :specialty, index: true

      t.timestamps null: false
    end
  end
end
