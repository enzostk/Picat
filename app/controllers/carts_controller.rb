class CartsController < ApplicationController
  def show
    @items_in_cart = JoinTableItemsCart.where(cart_id: current_user.cart.id)
  end

  def create
  end

  def update
  end

  def destroy
  end
end