class CartController < ApplicationController
  def show
    @items_in_cart = JoinTableItemsCarts.where(cart_id: current_user.cart.id)
  end

  def create
  end

  def update
  end

  def destroy
  end
end
