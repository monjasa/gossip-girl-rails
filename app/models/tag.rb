class Tag < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :gossips
  has_many :users, through: :gossips

  resourcify
end
