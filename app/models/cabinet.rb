class Cabinet < ApplicationRecord
  has_many :items
  has_many :item_types, through: :items
end
