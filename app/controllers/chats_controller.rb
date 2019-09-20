class ChatsController < ApplicationController

  #api :POST, 'applications/:application_id/chats/create'
  #description "Create new chat"
  def create
		begin
			ActiveRecord::Base.transaction do
				@chat = Chat.create!(application_id: params[:id])
      end
    rescue => e #ActiveRecord::RecordNotUnique
      p e.message
      p e.backtrace
			ActiveRecord::Rollback
			render plain: e.message, status: :unprocessable_entity and return
    end
    render json: "Chat created with number =  #{@chat.number}", status: :created
  end



  
end
