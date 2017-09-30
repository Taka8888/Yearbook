class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_many :notifications, dependent: :destroy

  validates :content, presence: true

end
