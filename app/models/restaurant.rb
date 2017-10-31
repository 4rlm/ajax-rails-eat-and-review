class Restaurant < ApplicationRecord
  validates :user_id, :name, :cuisine, :address, :city, :state, :zip, presence:true
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
