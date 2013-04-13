class Post < ActiveRecord::Base
  attr_accessible :title, :author, :content, :published_at

  validates :title, presence: true
  validates :author, presence: true
  validates :content, presence: true
end
