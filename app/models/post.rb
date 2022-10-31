class Post < ApplicationRecord
    has_noticed_notifications

    belongs_to :user
    
    after_create_commit :notify_user

    private
    
    def notify_user
        PostNotification.with(post: self).deliver_later(user)
    end
   
end
