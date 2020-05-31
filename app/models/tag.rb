class Tag < ApplicationRecord
  has_many :gossips
  has_many :users, through: :gossips

  resourcify
end
