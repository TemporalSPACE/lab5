class Monster < ApplicationRecord
  validates :name, :birthdate, presence: true
  has_many :tweets
  
  validate :phone_must_be_valid

  def phone_must_be_valid
    if PhoneValidator.new(phone).valid?
      return
    else
      errors.add(:phone, :invalid)
    end
  end
end
