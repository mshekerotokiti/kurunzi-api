class KurunziShopController < ApplicationController
  # GET /kurunzi_shop
  def index
    @shop_items = KurunziShop.all

    if params[:category_id].present?
      @shop_items = @shop_items.where(category_id: params[:category_id])
    end

    if params[:search].present?
      query = params[:search].downcase
      @shop_items = @shop_items.where("name ILIKE ?", "%#{params[:search]}%")
    end

    # Filter by minimum price if provided
    if params[:min_price].present?
      @shop_items = @shop_items.where('price >= ?', params[:min_price])
    end

    # Filter by maximum price if provided
    if params[:max_price].present?
      @shop_items = @shop_items.where('price <= ?', params[:max_price])
    end

    # Apply pagination
    @shop_items = @shop_items.page(params[:page] || 1).per(4)

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

  
end
