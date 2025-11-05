class User < ApplicationRecord

  # delete
  def delete
    update(deleted_at: Time.current)
  end

  def user_deleted?
    deleted_at.present?
  end

  def restore_user
    update(deleted_at: nil)
  end

  # secure_password
  has_secure_password

  before_save :generate_slug, if: -> { slug.blank? }

  # validations
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
  validates :flag, presence: true
  
  validates :password, presence: true, confirmation: true, if: -> { new_record? || password.present? }
  validates :password_confirmation, presence: true, if: -> { new_record? || password.present? }

  private
  def generate_slug
    if email.present?
      self.slug = email.parameterize
    end
  end
  
end
