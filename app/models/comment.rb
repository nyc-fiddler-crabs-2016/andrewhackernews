class Comment < ActiveRecord::Base
  validates :user_id, :post_id, presence: :true
  # validates :user, :post, presence: true
  belongs_to :user
  belongs_to :post
  has_many :commentvotes

  def voted_on?(user_id)
  @commentvotes = User.find(user_id).commentvotes.where(comment_id: self.id)
  if @commentvotes.length >= 1
   return true
 end
end

end
