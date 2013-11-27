class Comment < ActiveRecord::Base
  attr_accessible :content

  belongs_to :bizcard
  belongs_to :user

  validates :comment, presence: :true
end
