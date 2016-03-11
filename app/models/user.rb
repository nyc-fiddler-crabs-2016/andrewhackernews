class User < ActiveRecord::Base
  validates :username, presence: true
  validates :username, uniqueness: true
  has_secure_password
  has_many :posts
  has_many :comments
  has_many :postvotes
  has_many :commentvotes

end
