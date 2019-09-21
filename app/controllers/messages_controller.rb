class MessagesController < ApplicationController

  def show
    @message = Message.find(params[:id])
    render json: @message
  end

  #api :POST, 'chats/:id/messages/create'
  #description "Create new message"
  def create
		begin
			ActiveRecord::Base.transaction do
				@message = Message.create!(chat_id: params[:chat_id] , body: params[:body] )
			end
    rescue => e #ActiveRecord::RecordNotUnique
      p e.message
      p e.backtrace
			ActiveRecord::Rollback
			render plain: e.message, status: :unprocessable_entity and return
    end
    render json: "Message created with number =  #{@message.number}", status: :created
  end


  def search
    query = params[:q].present?
    @messages = Message.search_messages(params[:q] , params[:id]) if query

    found_msg = Hash.new
    @messages.each do |b|
      found_msg[b.number] = b.body
    end
  
    render json: "found #{found_msg.size} message ________ #{found_msg} "

  end

end
