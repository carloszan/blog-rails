class Author < ActiveRecord::Base

  has_secure_password
  has_many :posts, dependent: :destroy

  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email,    presence: true, length: { maximum: 50 },
                       format: { with: VALID_EMAIL_FORMAT},
                       uniqueness: {case_sensitive: false}
  validates :name,     presence: true, length: { maximum: 50 }
  validates :password, presence: true, length: { minimum: 6  }

  before_save { self.email = email.downcase }

  # Returns the hash digest of the given string. FOR TEST
  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
