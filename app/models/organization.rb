class Organization < ApplicationRecord
  has_many :users, dependent: :destroy 
  has_many :flags, dependent: :destroy 
end
