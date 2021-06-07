class ChatroomsController < ApplicationController


    def index
      @chatrooms = policy_scope(Chatroom).where('sender_id = ? or receiver_id = ?', current_user.id, current_user.id)
      
      @users = policy_scope(User)
     if params["search"].present?
       @users = policy_scope(User.find_by(params["search"].username))
     else
       @users = policy_scope(User)
     end
    end

    def show
      @chatroom = Chatroom.find(params[:id])
      @message = Message.new
      authorize @chatroom
      authorize @message
    end

    
end
