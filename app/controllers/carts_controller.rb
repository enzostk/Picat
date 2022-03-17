class CartsController < ApplicationController
  include CartHelper

  before_action :require_login
  before_action :only_current_user_cart

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
