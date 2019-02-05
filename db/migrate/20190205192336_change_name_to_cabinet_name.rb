class ChangeNameToCabinetName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :name, :cabinet_name
  end
end
