class MessagesController < ApplicationController

  #api :POST, 'chats/:id/messages/create'
  #description "Create new message"
  def create
		begin
			ActiveRecord::Base.transaction do
				@message = Message.create!(chat_id: params[:id] , message_content: params[:message_content]) 
      end
    rescue => e #ActiveRecord::RecordNotUnique
      p e.message
      p e.backtrace
			ActiveRecord::Rollback
			render plain: e.message, status: :unprocessable_entity and return
    end
    render json: "Message created with number =  #{@message.number}", status: :created
  end


  
end
