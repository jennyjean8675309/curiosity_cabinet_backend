class ItemType < ApplicationRecord
  has_many :items
  has_many :cabinets, through: :items
end
