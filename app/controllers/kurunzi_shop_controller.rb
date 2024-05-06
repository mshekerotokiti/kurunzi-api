class KurunziShopController < ApplicationController
  # before_action :set_kurunzi_shop, only: [:show]
  
  # GET /kurunzi_shop
  def index
    if params[:category_id]
      @shop_items = KurunziShop.where(category_id: params[:category_id])
    else
      @shop_items = KurunziShop.all
    end

    # Apply pagination
    @shop_items = @shop_items.page(params[:page] || 1).per(5)

    # Include pagination meta info
    render json: {
      shop_items: @shop_items.as_json,  
      total_pages: @shop_items.total_pages,
      current_page: @shop_items.current_page,
      total_count: @shop_items.total_count
    }
  end

  # GET /kurunzi_shop/:id
  def show
    @kurunzi_shop = KurunziShop.find_by(id: params[:id])

    if @kurunzi_shop
      render json: @kurunzi_shop
    else
      render json: { error: "Shop item not found" }, status: :not_found
    end
  end

  private
  def set_kurunzi_shop
    @kurunzi_shop = KurunziShop.find_by(id: params[:id])
    unless @kurunzi_shop
      render json: { error: "Shop item not found" }, status: :not_found
    end
  end

  def kurunzi_shop_params
    params.permit(:name, :image_url, :description, :price)
  end
end
