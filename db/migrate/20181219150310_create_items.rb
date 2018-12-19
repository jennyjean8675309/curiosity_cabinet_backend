class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :cabinet_id
      t.integer :item_type_id
      t.string :name
      t.string :description
      t.text :interpretation
      t.string :location
      t.string :image_url
      t.timestamps
    end
  end
end
