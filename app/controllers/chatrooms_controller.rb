class ChatroomsController < ApplicationController


    def index
      @chatrooms = policy_scope(Chatroom).where('sender_id = ? or receiver_id = ?', current_user.id, current_user.id)
    end

    def show
      @chatroom = Chatroom.find(params[:id])
      @message = Message.new
      authorize @chatroom
      authorize @message
    end
end
