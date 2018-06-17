class MessagesController < ApplicationController
  
  def create
    @source = {}
    @source["id"] = current_user.id
    @source["text"] = msg_params
    @source["chat_id"] = params[:chat_id]
  end
  
  
  private
  def msg_params
    params.require(:message).permit(:text)
  end
end
