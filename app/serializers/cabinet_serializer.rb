class CabinetSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :first_name, :last_name, :email, :username, :password, :items
  def items
    self.object.items.map do |item|
      { item_id: item.id,
        name: item.name,
        description: item.description,
        interpretation: item.interpretation,
        location: item.location,
        image_url: item.image_url,
        item_type: item.item_type
      }
    end
  end
end
