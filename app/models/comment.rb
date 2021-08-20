class Comment < ApplicationRecord
    belongs_to :user
    has_many :comments
    paginates_per 2




    def father_avatar
        Comment.find(self.comment_id).user.avatar
   
    end
    def father
        Comment.find(self.comment_id).user.name
   
    end
end
