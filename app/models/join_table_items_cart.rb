class JoinTableItemsCart < ApplicationRecord
  belongs_to :item
  belongs_to :cart

  def self.add_or_create_cart_item_link(permit_link_params)
    if JoinTableItemsCart.find_by(cart_id: permit_link_params[:cart_id], item_id: permit_link_params[:item_id]) == nil
      @new_item_add = JoinTableItemsCart.create(item_id: permit_link_params[:item_id], cart_id: permit_link_params[:cart_id], quantity: 1)
    else
      @new_item_add = JoinTableItemsCart.find_by(cart_id: permit_link_params[:cart_id], item_id: permit_link_params[:item_id])
      @new_item_add.update(quantity: @new_item_add.quantity + 1)
    end
  end
end
