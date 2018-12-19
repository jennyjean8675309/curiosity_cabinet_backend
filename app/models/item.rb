class Item < ApplicationRecord
  belongs_to :cabinet
  belongs_to :item_type
end
