class MessagesController < ApplicationController
  
  def create
    chat = Chat.find(params[:chat_id])
    if chat.user_ids.include? current_user.id
      @source = {}
      @source["id"] = current_user.id
      @source.merge! msg_params
      @source["chat_id"] = chat.id
    end
  end
  
  private
  def msg_params
    params.require(:message).permit(:text)
  end
end
