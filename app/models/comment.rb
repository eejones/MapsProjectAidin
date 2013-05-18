class Comment < ActiveRecord::Base
  belongs_to :place
  attr_accessible :body, :commenter
end
