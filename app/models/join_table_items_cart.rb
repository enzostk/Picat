class JoinTableItemsCart < ApplicationRecord
  belongs_to :item
  belongs_to :cart
end
