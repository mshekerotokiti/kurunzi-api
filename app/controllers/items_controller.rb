class ItemsController < ApplicationController
    def index
        if params[:category_id]
          @items = Item.where(category_id: params[:category_id])
        else
          @items = Item.all
        end
        render json: @items
      end
  

    def show
      item = Item.find_by(id: params[:id])
      if item
        render json: item, status: :ok
      else
        render json: { error: "Item not found" }, status: :not_found
      end
    end
  
end
