class Tag < ActiveRecord::Base
  has_many :post_to_tags
  has_many :posts, through: :post_to_tags
end
