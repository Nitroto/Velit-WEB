class AddColumnsToPartner < ActiveRecord::Migration[5.1]
  def change
    add_column :partners, :home, :string
  end
end
