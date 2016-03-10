class Post < ActiveRecord::Base
  has_many :comments
  has_many :postvotes
  belongs_to :user
  validates :title, presence: true

def voted_on?(user_id)
  @postvotes = User.find(user_id).postvotes.where(post_id:self.id)
  if @postvotes.length >= 1
   return true
 end
end


end
