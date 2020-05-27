class Gossip < ApplicationRecord

  belongs_to :user
  belongs_to :tag
  has_many :comments, dependent: :destroy

  validates :message, presence: true
end
