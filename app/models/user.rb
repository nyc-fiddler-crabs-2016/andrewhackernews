class User < ActiveRecord::Base
  validates :username, presence: true # could put uniqueness: true on this line also
  validates :username, uniqueness: true
  validate :password_has_numbers
  has_secure_password
  has_many :posts
  has_many :comments
  has_many :postvotes
  has_many :commentvotes

  def total_votes
    self.commentvotes.length + self.postvotes.length
  end

  def password_has_numbers
    unless !!(self.password =~ /.*[0-9].*/)
      errors.add(:password, "needs at least one number")
    end
  end

end
