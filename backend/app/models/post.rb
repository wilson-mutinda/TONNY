class Post < ApplicationRecord

  default_scope{ where(deleted_at: nil)}

  def delete_post
    update(deleted_at: Time.current)
  end

  def soft_deleted?
    deleted_at.present?
  end

  def restore
    update(deleted_at: nil)
  end

  before_save :generate_slug

  belongs_to :category

  has_one_attached :post_image

  # validations
  validates :description, presence: true, if: -> { description.present? || new_record? }

  private
  def generate_slug
    if description.present?
      self.slug = description.parameterize
    end
  end
end
