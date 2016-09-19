class User < ApplicationRecord
  # Direct associations

 has_many :received_friend_requests, dependent: :destroy

 has_many :sent_friend_requests, dependent: :destroy

 has_many :comments, dependent: :destroy

 has_many :likes, dependent: :destroy

 has_many :comment_photos, through: :comments, source: :photo

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
