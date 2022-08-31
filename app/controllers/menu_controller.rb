class MenuController < ApplicationController
  before_action :set_cats
  def index
    @page = 'menu'
    @products = Product.all
    @order_items = current_order.order_items.new
  end

  def search
    query = params[:search]

    results = Product.where('name LIKE ?', "%#{query}%")
    if params[:filter] == 'Select Filter'
      @products = results
    else
      # 'Dairy Free' -> 'Dairy_Free' -> 'dairy_free' -> :dairy_free
      symbol = params[:filter].gsub(/ /, '_').downcase!.to_sym
      # @products = results.where(:dairy_free => true)
      @products = results.where(symbol => true)
    end
  end

  def create_cart
    order = Order.create!
    @order_items = OrderItem.new(product_id: params[:product_id], quantity: params[:quantity], order_id: order.id)
    @order_items = @order_items.save!
  end



  private

  def set_cats
    @cats = Category.all.where(display: true)
  end
end