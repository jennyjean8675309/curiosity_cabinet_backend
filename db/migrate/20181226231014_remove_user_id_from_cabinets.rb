class RemoveUserIdFromCabinets < ActiveRecord::Migration[5.2]
  def change
    remove_column :cabinets, :user_id, :integer
  end
end
