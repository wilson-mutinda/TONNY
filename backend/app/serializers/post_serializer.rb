class PostSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers
  attributes :id, :description, :category_name, :post_image

  def category_name
    object.category.category_name if object.category
  end

  def post_image
    if object.post_image.attached?
      rails_blob_url(object.post_image, host: "http://localhost:3000")
    end
  end

end
