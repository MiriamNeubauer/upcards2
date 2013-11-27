class Bizcard < ActiveRecord::Base
  attr_accessible :company, :firstname, :img, :lastname, :onlinkedin, :role, :avatar

  has_many :comments, :dependent => :destroy
  belongs_to :user

  mount_uploader :avatar, AvatarUploader

end
