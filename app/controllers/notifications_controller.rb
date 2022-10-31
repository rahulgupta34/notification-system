class NotificationsController < ApplicationController
  def index
    @notifications = Notification.all
    # binding.pry
  end
end
