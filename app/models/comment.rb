class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :gossip

  validates :message, presence: true
end
