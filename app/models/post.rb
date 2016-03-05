class Post < ActiveRecord::Base

  validates :title, presence: true, length: { maximum: 35 }
  validates :text, presence: true

  belongs_to :author
  has_and_belongs_to_many :tags

  def self.search(search)
    where("text || title ILIKE ?", "%#{search}%")
  end

  def text_limit(number)
    self.text[0..number].gsub(/\s\w+\s*$/,'...')
  end

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end
end
