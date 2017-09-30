class Post < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :content, presence: true
end
