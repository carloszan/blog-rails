class Post < ActiveRecord::Base

  validates :title, presence: true, length: { maximum: 35 }
  validates :text, presence: true

  belongs_to :author

  def self.search(search)
    where("text || title LIKE ?", "%#{search}%")
  end

  def text_limit(number)
    self.text[0..number].gsub(/\s\w+\s*$/,'...')
  end
end
