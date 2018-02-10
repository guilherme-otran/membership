class Member < ApplicationRecord
  validates :name, presence: true
  validates :email, email: true

  validates :birthdate, presence: true

  validates :phone1, length: { in: 10..11 }
  validates :phone2, length: { in: 10..11 }
  validates :phone3, length: { in: 10..11 }

  before_validation do
    clear_phones!
  end

  belongs_to :city

  def clear_phones!
    self.phone1 = phone1.gsub(/[^0-9]/, "") if attribute_present?("phone1")
    self.phone2 = phone2.gsub(/[^0-9]/, "") if attribute_present?("phone2")
    self.phone3 = phone3.gsub(/[^0-9]/, "") if attribute_present?("phone3")
  end
end
