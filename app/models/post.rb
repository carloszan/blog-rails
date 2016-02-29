class Post < ActiveRecord::Base

  validates :title, presence: true, length: { maximum: 20 }
  validates :text, presence: true

  belongs_to :author
end
