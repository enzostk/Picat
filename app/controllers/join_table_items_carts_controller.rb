class JoinTableItemsCartsController < ApplicationController
  def create
    @item_add = JoinTableItemsCart.add_or_create_cart_item_link(permit_link_params)
    redirect_to items_path
  end

  def update
  end

  def destroy
  end

  private

  def permit_link_params
    params.require(:join_table_items_cart).permit(:item_id, :cart_id, :quantity)
  end
end
