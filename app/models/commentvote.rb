class Commentvote < ActiveRecord::Base
  belongs_to :comment
  belongs_to :user
  #same thing here
end
