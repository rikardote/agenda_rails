class CreateCita < ActiveRecord::Migration
  def change
    create_table :appointment do |t|
      t.references :patient, index: true, foreign_key: true
      t.references :physician, index: true, foreign_key: true
      t.date :fecha_inicial
      t.date :fecha_final
      t.string :horario

      t.timestamps null: false
    end
  end
end
