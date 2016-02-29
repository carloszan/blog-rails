class Author < ActiveRecord::Base

  has_many :posts, dependent: :destroy

  validates :email, presence: true, length: { maximum: 50 }
  validates :name,  presence: true, length: { maximum: 50 }

  has_secure_password
end
