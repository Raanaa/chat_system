class ApplicationsController < ApplicationController

  def index
    apps = Application.all
    render json: apps
  end

  def show
    @app = Application.where(token: params[:application_token])
    render json: @app
  end

  def update
    @app = Application.where(token: params[:application_token]).first
    @app.name = params[:name]
    @app.save
    render json: @app
  end

  def get_chats
    @chats = Application.where(token: params[:token]) .first.chats
    render json: @chats
  end

  #api :POST, '/projects/create/name'
  #description "Create new app"
  #param :name, String
  def create
		begin
			ActiveRecord::Base.transaction do
				@application = Application.create!(name: params[:name])
      end
    rescue => e #ActiveRecord::RecordNotUnique
      p e.message
      p e.backtrace
			ActiveRecord::Rollback
			render plain: e.message, status: :unprocessable_entity and return
    end
    render json:" Application created with token = #{@application.token}", status: :created
  end

end
