class Speaker < ApplicationRecord

  validates :first_name, :last_name, length: { minimum: 2 }
  validates :email, uniqueness: true
  validates :age, numericality: {greater_than: 18}
  
  
  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
