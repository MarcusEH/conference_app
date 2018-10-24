class Meeting < ApplicationRecord
  validates :title, :agenda, :time, presence: true 
  validates
end
