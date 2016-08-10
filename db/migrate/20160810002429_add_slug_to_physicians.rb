class AddSlugToPhysicians < ActiveRecord::Migration
  def change
    add_column :physicians, :slug, :string
    add_index :physicians, :slug, unique: true
  end
end
