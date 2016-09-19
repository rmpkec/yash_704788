class Photo < ApplicationRecord
  # Direct associations

 has_many :comments, dependent: :destroy

 has_many :likes, dependent: :destroy

 has_many :users, through: :photo, source: :comments

  # Indirect associations

  # Validations

end
