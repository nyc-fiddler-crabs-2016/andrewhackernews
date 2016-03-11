class Post < ActiveRecord::Base
  has_many :comments
  has_many :postvotes
  belongs_to :user
  # validates :user, presence: true
  validates :title, presence: true

def voted_on?(user_id) #could just pass the entire user here
  # !!PostVotes.find_by(user_id: user.id, post_id: self.id)
  @postvotes = User.find(user_id).postvotes.where(post_id:self.id)
  if @postvotes.length >= 1
   return true
 end
 # does this method ever return false?
end


end
