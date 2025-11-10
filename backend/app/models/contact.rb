class Contact < ApplicationRecord

  default_scope { where(deleted_at: nil)}

  # soft_delete
  def soft_delete
    update(deleted_at: Time.current)
  end

  # contact_deleted?
  def contact_deleted?
    deleted_at.present?
  end

  # restore
  def restore
    update(deleted_at: nil)
  end

  before_save :generate_slug

  # validations
  validates :email, presence: true, if: -> { email.present? || new_record? }
  validates :phone, presence: true, if: -> { new_record? || phone.present? }
  validates :message, presence: true, if: -> { new_record? || message.present? }

  private
  def generate_slug
    if email.present?
      self.slug = email.parameterize
    end
  end
end
