class AddDescriptiontoServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :description, :string, :null => false
  end
end
