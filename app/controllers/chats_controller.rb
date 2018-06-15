class ChatsController < ApplicationController
  
  def index
    @chats = Chat.all
  end
  
  def create
    @chat = Chat.new(chat_params)

    if @chat.save
      render json: :index 
    else
      render :errors 
    end
  end
  
  private
  def set_chat
    @chat = Chat.find(params[:id])
  end
    
  def chat_params
    params.require(:chat).permit(:user_ids)
  end
end