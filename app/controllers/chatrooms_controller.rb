class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all.order(created_at: :desc)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
