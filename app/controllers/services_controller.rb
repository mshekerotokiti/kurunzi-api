# app/controllers/services_controller.rb
class ServicesController < ApplicationController
  def search
    query = params[:query]
    @results = Service.where("name LIKE ? OR description LIKE ?", "%#{query}%", "%#{query}%")
    render json: @results
  end
end
