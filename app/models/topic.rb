class Topic < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  
  validates :content, presence: true
end
