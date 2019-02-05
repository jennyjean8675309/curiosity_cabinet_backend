class ChangeCabinetIdToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :cabinet_id, :user_id
  end
end
