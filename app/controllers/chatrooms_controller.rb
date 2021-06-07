class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom).where('sender_id = ? or receiver_id = ?', current_user.id, current_user.id)
    @chatroom = Chatroom.new
  end

  # def create
  #   @chatroom = Chatroom.new(chatroom_params)
  #   @chatroom.sender_id = current_user
  #   @chatroom.receiver_id = User.find(29)
  #   if @chatroom.save
  #     redirect_to my_chatrooms_path
  #   else
  #     render :index
  #   end
  # end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
    authorize @message
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
