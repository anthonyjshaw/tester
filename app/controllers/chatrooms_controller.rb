class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom).where('sender_id = ? or receiver_id = ?', current_user.id, current_user.id)
    @chatroom = Chatroom.new
    # You need make an instance variable called: @users = User.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
    authorize @message
  end

  def create
    @chatroom = Chatroom.new
    authorize @chatroom
    @chatroom.sender = current_user
    @chatroom.receiver = Project.find(params[:project_id]).user
    @chatroom.name = "#{@chatroom.sender.username} and #{@chatroom.receiver.username}"
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render 'chatrooms/index'
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
