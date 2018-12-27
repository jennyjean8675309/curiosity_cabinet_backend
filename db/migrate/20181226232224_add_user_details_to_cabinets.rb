class AddUserDetailsToCabinets < ActiveRecord::Migration[5.2]
  def change
    add_column :cabinets, :first_name, :string
    add_column :cabinets, :last_name, :string
    add_column :cabinets, :email, :string
    add_column :cabinets, :username, :string
    add_column :cabinets, :password, :string
  end
end
