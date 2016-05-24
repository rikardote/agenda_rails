class DropAppointmentsTable < ActiveRecord::Migration
   def up
    drop_table :appointment
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
