class ApplicationsController < ApplicationController

  def show
    @app = Application.find(params[:id])
    render json: @app
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
