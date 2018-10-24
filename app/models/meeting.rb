class Meeting < ApplicationRecord
  validates :title, :agenda, :time, :location, :remote, presence: true
  validates :title, :agenda, :location, length: {minimum: 5}
  # validates :remote, inclusion: { in: [ true, false ] } # this obviously doesn't fully work because of truthiness and falsiness. It won't return an error even though it is technically not what the user wants... because for example the string "no" reads as true.  
end
