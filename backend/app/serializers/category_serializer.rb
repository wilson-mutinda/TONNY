class CategorySerializer < ActiveModel::Serializer
  attributes :id, :category_name, :registered_on, :slug

  def registered_on
    object.created_at.strftime("%B %d, %Y")
  end
end
