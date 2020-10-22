class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :house_name_or_number, :string
    add_column :users, :postal_code, :string
  end
end
