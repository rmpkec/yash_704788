class FriendRequest < ApplicationRecord
  # Direct associations

 belongs_to :recipient

 belongs_to :sender

  # Indirect associations

  # Validations

end
