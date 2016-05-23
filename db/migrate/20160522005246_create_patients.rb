class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :rfc
      t.string :name
      t.string :father_lastname
      t.string :mother_lastname
      t.date :fecha_nacimiento
      t.integer :type_id

      t.timestamps null: false
    end
  end
end
