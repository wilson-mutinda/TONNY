class Category < ApplicationRecord

  has_many :posts

  default_scope { where(deleted_at: nil)}

  def soft_delete_name
    update(deleted_at: Time.current)
  end

  def category_deleted?
    deleted_at.present?
  end

  def restore_category
    update(deleted_at: nil)
  end

  before_save :generate_slug

  # validations
  validates :category_name, presence: true, uniqueness: true, if: -> { new_record? || category_name.present? }

  private
  def generate_slug
    if category_name.present?
      self.slug = category_name.parameterize
    end
  end
end
