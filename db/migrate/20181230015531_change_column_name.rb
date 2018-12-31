class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cabinets, :password, :password_digest
  end
end
