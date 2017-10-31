class User < ApplicationRecord
  has_secure_password
  
  validates :username, :email, :password, presence: true
  validates :email, uniqueness: true

  has_many :restaurants, dependent: :destroy
  has_many :reviews, dependent: :destroy

end
