class CartsController < ApplicationController
  def show
    # @items_in_cart = JoinTableItemsCarts.where(cart_id: current_user.cart.id)
    @items_in_cart = Cart.where(id: current_user.id)
  end

  def create
  end

  def update
  end

  def destroy
  end
end
