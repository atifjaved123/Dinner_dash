class CartController < ApplicationController
  def show
    # @order_items = OrderItem.all
    @order_items = OrderItem.all
  end
  def update
    @cart.update = Cart.find params[:product_id]
    if @cart.update
      redirect_to path"update_cart"
    else
      render'cart'
    end
      
    end

end
