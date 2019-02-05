class ChangeCabinetsToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :cabinets, :users
  end
end
