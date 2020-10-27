class AddBookabletoServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :bookable, :boolean, :null => false
  end
end
