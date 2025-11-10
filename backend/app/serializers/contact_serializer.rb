class ContactSerializer < ActiveModel::Serializer
  attributes :id, :email, :phone, :message, :slug, :generated_on

  def generated_on
    object.created_at.strftime("%B %d, %Y")
  end
end
