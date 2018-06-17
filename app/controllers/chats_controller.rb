class ChatsController < ApplicationController
  
  def create
    @chat = Chat.create
    @chat.user_ids = users   
  end
  
  private
  
  def users
    [current_user.id] + user_ids[:user_ids].map(&:to_i)
  end
  
  def user_ids
    params.require(:chat).permit(user_ids: [])
  end
end