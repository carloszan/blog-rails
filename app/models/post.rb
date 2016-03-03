class Post < ActiveRecord::Base

  validates :title, presence: true, length: { maximum: 20 }
  validates :text, presence: true

  belongs_to :author

  def self.search(search)
    where("text || title ILIKE ?", "%#{search}%")
  end
end
