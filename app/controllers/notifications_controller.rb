class NotificationsController < ApplicationController

  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :set_notification, only: %i[ mark_read ]

  def index
    @notifications = Notification.all.unread.newest_first
  end

  def mark_read
    @notification.mark_as_read!
    redirect_to notifications_path
  end

  private

  def set_notification
    @notification = Notification.find(params[:id])
  end

end
