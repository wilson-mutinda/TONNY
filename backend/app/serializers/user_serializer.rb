class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :phone, :role, :slug, :registered_on

  def role
    object.flag
  end

  def registered_on
    object.created_at.strftime("%B %d, %Y")
  end
end
