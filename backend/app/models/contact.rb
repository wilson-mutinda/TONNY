class Contact < ApplicationRecord

  # validations
  validates :email, presence: true, if: -> { email.present? || new_record? }
  validates :phone, presence: true, if: -> { new_record? || phone.present? }
  validates :message, presence: true, if: -> { new_record? || message.present? }
end
