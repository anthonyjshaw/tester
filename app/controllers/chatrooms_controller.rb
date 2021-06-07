class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom).where('sender_id = ? or receiver_id = ?', current_user.id, current_user.id)

    @users = User.all
    if params["search"].present?
      @users = User.find_by(params["search"].username)
    else
      @users = User.all
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
    authorize @message
  end
end
