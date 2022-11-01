class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, polymorphic: true

  after_create_commit :set_notification_post

  private

  def set_notification_post
      broadcast_prepend_to "notifications", partial: "notifications/notification", locals: { notification: self }, target: "notifications"
  end

end
