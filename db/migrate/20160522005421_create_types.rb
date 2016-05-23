class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.integer :code
      t.string :description

      t.timestamps null: false
    end
  end
end
