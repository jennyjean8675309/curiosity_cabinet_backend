class AddImageToCabinets < ActiveRecord::Migration[5.2]
  def change
    add_column :cabinets, :image, :string
  end
end
